<?php
    
namespace App\Http\Controllers;
    
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Division;
use App\Models\BloodRequest;
use App\Models\Registration;
use App\Models\RequestResponse;
use Spatie\Permission\Models\Role;
use Maatwebsite\Excel\Facades\Excel;
use DB;
use Hash;
use Carbon\Carbon;
use Illuminate\Support\Arr;
    
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function __construct()
    {
        $this->middleware(['permission:user-list'])->only(['index']);
        $this->middleware(['permission:user-add'])->only(['create']);
        $this->middleware(['permission:user-edit'])->only(['edit']);
        $this->middleware(['permission:user-list'])->only(['show']);
        $this->middleware(['permission:user-delete'])->only(['destroy']);
    }
    
    public function index(Request $request)
    {
        $data = User::orderBy('id','ASC')->get()->skip(2);
        return view('users.index',compact('data'))
            ->with('i', ($request->input('page', 1) - 1) * 10);
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::pluck('name','name')->all();
        return view('users.create',compact('roles'));
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $this->validate($request, [
            'name' => 'nullable',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required',
            'first_name' => 'nullable',
            'last_name' => 'nullable',
            'image' => 'nullable',
        ]);
    
        $input = $request->all();

        $fullName = $request->first_name.' '.$request->last_name;
        $user = new User();
        $user->name =  $fullName;
        $user->email =  $request->email;
        $user->password =  Hash::make($input['password']);
        $user->save();

        $user->assignRole($request->input('roles'));
    
        return redirect()->route('users.index')
                        ->with('success','User created successfully');
    }
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return view('users.show',compact('user'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRole = $user->roles->pluck('name','name')->all();
    
        return view('users.edit',compact('user','roles','userRole'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password',
            'roles' => 'required'
        ]);
    
        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input,array('password'));    
        }
    
        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();
    
        $user->assignRole($request->input('roles'));
    
        return redirect()->route('users.index')
                        ->with('success','User updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->route('users.index')
                        ->with('success','User deleted successfully');
    }

    public function profile($id)
    {
        $details = User::with('donorDetails')->findOrFail($id);
        $postCount = BloodRequest::where('request_by', $id)->get()->count();
        $bloodDonateCount = RequestResponse::where('donor_id', $id)->where('status', 1)->get()->count();
        return view('backend.profile.view', compact('details', 'postCount', 'bloodDonateCount'));
    }
    
    public function csv(){
        
        return view('users.csvUpload');
    }

    public function csvStore(Request $request){
        // dd($request->all());
        $file = $request->file('file');
        $fileContents = file($file->getPathname());
    
        foreach ($fileContents as $line) {

            $data = str_getcsv($line);
            // dd($data);

            $lastThreeDigits = substr($data[3], -3);
            $currentDate = Carbon::today()->toDateString();
            $currentDate = now()->format('d');
            $currentTime = Carbon::now()->toTimeString();
            $currentTimeMunite = now()->format('i');
            $currentTimeSecond = now()->format('s');

            $donor = new Registration();
            $donor->first_name = $data[0];
            $donor->last_name  = $data[1];
            $donor->email =  $data[2];
            $donor->mobile =  $data[3];
            $donor->password =  Hash::make($data[4]);
            $donor->user_id  = 'SBDSU'.$data[6].$lastThreeDigits.$currentDate.$currentTimeMunite.$currentTimeSecond;
            $donor->birth_date = $data[5];
            $donor->age = $data[6];
            $donor->blood_group = $data[7];
            $donor->gender = $data[8];
            $donor->donate_check = $data[9];
            $donor->division_id = $data[17];
            $donor->district_id = $data[19];
            $donor->thana_id = $data[21];
            $donor->refer_id = $data[12];
            $donor->agree = 1;
            $donor->created_by = $data[13];
            $donor->save();

            $fullName = $data[0].' '.$data[1];
            $user = new User();
            $user->name =  $fullName;
            $user->email =  $data[2];
            $user->password =  Hash::make($data[4]);
            $user->donor_id =  $donor->id;
            $user->save();

            $user->assignRole(5);

            $number = $data[4];
            $text = 'Thank you for registration. Your Default Login Credentials is User ID: ' .$data[2]. ' primary Password is: ' .$data[4]. ' . Please login and change your email address and password from "My Profile" option for security purpose . Visit- https://www.sbdms.hupbd.org/login. If any question: wa.me/8801970248241';
            $this->sendsms($number,$text);
        }

        return redirect()->route('users.index')
        ->with('success','CSV Bulk Upload Successfully Done.');
       
    }

    public function sendsms($number,$text){       
        
        // $DOMAIN = GenaralSettings::get()->pluck('sms_api_url')->first();
        // $SID = GenaralSettings::get()->pluck('sid')->first();
        // $API_TOKEN = GenaralSettings::get()->pluck('sms_username')->first();

        $url = "http://api.greenweb.com.bd/api.php";
        $API_TOKEN = "9928112209169380492997c862d2016db5fd4655b45c51f83ea9";

        $data= array(
        'to'=>"$number",
        'message'=>"$text",
        'token'=>"$API_TOKEN"
        ); 

        $ch = curl_init(); 
        curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_ENCODING, '');
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $smsresult = curl_exec($ch);

        //Error Display
        echo curl_error($ch);

        return $smsresult;
    }
}