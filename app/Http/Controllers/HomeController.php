<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\User;
use App\Models\Event;
use App\Models\Group;
use App\Models\Thana;
use App\Models\Slider;
use App\Models\Division;
use App\Models\District;
use App\Models\Hospital;
use App\Models\BloodBank;
use App\Models\University;
use App\Models\BloodRequest;
use App\Models\UnusedProduct;
use Illuminate\Http\Request;
use App\Models\Registration;
use App\Models\TermCondition;
use Illuminate\Support\Carbon;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $slider      = Slider::get();
        $event       = Event::where('status', 1)->latest()->get();
        $donor       = Registration::where('status', 1)->latest()->get()->take(4);
        $hospital    = Hospital::where('status', 1)->latest()->get()->take(4);
        $university  = University::where('status', 1)->latest()->get()->take(4);
        $bloodBank   = BloodBank::where('status', 1)->latest()->get()->take(4);
        $bloodGroup  = Group::where('status', 1)->latest()->get()->take(4);
        // $bloodRequest  = BloodRequest::where('status', 1)->latest()->get()->take(4);
        $currentDate = Carbon::now();
        $bloodRequest  = BloodRequest::where('status', 1)->where('date','>=',$currentDate)->latest()->get()->take(4);

        $achievement = array(

            'totalHospital'     =>  Hospital::where('status', 1)->get()->count(),
            'totalUniversity'   =>  University::where('status', 1)->get()->count(),
            'totalGroup'        =>  Group::where('status', 1)->get()->count(),
            'totalEvent'        =>  Event::where('status', 1)->get()->count(),
            'totalDonor'        =>  Registration::where('status', 1)->get()->count(),

        );

        return view('home',compact('slider', 'event', 'donor', 'hospital', 'university', 'bloodBank', 'bloodGroup', 'bloodRequest', 'achievement'));
    }

    public function about()
    {
        return view('frontend.about');
    }

    public function team()
    {
        return view('frontend.team');
    }

    public function testimonial()
    {
        return view('frontend.testimonial');
    }

    public function contact()
    {
        return view('frontend.contact');
    }

    public function donor()
    {
        
        $refer_id = request()->query('ref');
        $university = University::where('status', 1)->get();
        $hospital = Hospital::where('status', 1)->get();
        $group = Group::where('status', 1)->get();
        $division = Division::get();

        if($refer_id){
            return view('frontend.registration', compact('hospital','university','group','division','refer_id'));
        }else{
            return view('frontend.registration', compact('hospital','university','group','division'));
        }
    }

    public function registration(Request $request){
      
        $validator = Validator::make($request->all(), [
            'donate_check' => 'required',
            'last_donate_date' => 'nullable',
            'first_name' => "required|regex:/^[A-Za-z.\s,'-]*$/",
            'last_name' => "required|regex:/^[A-Za-z.\s,'-]*$/",
            'email' => 'required|email|regex:/^([a-zA-Z0-9_.+-])+\@(([a-zA])+\.)+([a-zA]{2,4})+$/|unique:registrations,email,$id',
            'mobile' => 'required|min:11|max:11|unique:registrations,mobile,$id',
            'blood_group' => 'required',
            'birth_date' => 'nullable',
            'age' => 'nullable',
            'gender' => 'required',
            'division_id' => 'required',
            'district_id' => 'required',
            'thana_id' => 'required',
            'occupation' => 'required',
            'university_id' => 'nullable',
            'hospital_id' => 'required',
            'refer_id' => 'nullable',
            'interested_work' => 'nullable',
            'group_check' => 'required',
            'group_id' => 'nullable',
            'address' => 'nullable',
            'address_latitude' => 'nullable',
            'address_longitude' => 'nullable',
            'agree' => 'required',
            'status' => 'nullable',
            'live_address_check' => 'nullable',
            'user_id' => 'nullable',
            'password' => 'nullable',
            'weight' => 'nullable',
            'height' => 'nullable',
            'nid_no' => 'nullable',
            'facebook_id' => 'nullable',
            'instagram_id' => 'nullable',
            'youtube_id' => 'nullable',
            'linkedIn_id' => 'nullable',
            'image' => 'nullable',
        ]);

        if($validator->fails()) {
            return Redirect::back()->withErrors($validator)->withInput();
        }else{

        if($request->status){
            $status = 1;
        }else{
            $status = 0;
        }

        $data = $request->all();
       
        $lastThreeDigits = substr($request->mobile, -3);
        $currentDate = Carbon::today()->toDateString();
        $currentDate = now()->format('d');
        $currentTime = Carbon::now()->toTimeString();
        $currentTimeMunite = now()->format('i');
        $currentTimeSecond = now()->format('s');
        $data['user_id'] = 'SBDSU'.$request->age.$lastThreeDigits.$currentDate.$currentTimeMunite.$currentTimeSecond;
        if($request->refer_id!=''){
            $refer_id = $data['refer_id'];
        }else{
            $refer_id = 'SBDSU32241030241';
        }
        $data['refer_id'] = $refer_id;
        $data['password'] = Hash::make($request->mobile);
        // dd($data['refer_id']);
        // $ImageName = 'default.jpg';
        // if ($request->hasFile('image')) {
        //     $file = request()->file('image');
        //     $ImageName = time() . "-" . request('image')->getClientOriginalName();
        //     $ImageName = str_replace(' ', '-', $ImageName);
        //     Image::make($file)->fit(370, 253, function ($constraint) {
        //     $constraint->aspectRatio();
        //     })->encode()->save(storage_path('/app/public/uploads/hospital/') . $ImageName);
        // }
        // $validator['image'] = $ImageName;

        $registration = Registration::create($data);

        $user = New User();
        $user->name = $request->first_name . ' '.$request->last_name;
        $user->email = $request->email;
        $user->password = Hash::make($request->mobile);
        $user->donor_id = $registration->id;
        $user->save();
        $user->assignRole(5);

        $number = $request->mobile;
        $text = 'Thank you for registration. Your Login Credentials is User ID: ' .$request->email. ' primary Password is: ' .$request->mobile. ' . If any question: wa.me/8801970248241';

         $this->sendsms($number,$text);
           
        return redirect()->route('donor')->with('success', 'Successfully Registered');
        }
    }

    //sendsms for successful registration
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

    public function getDistrict($id){
        $district = District::where('division_id', $id)->get();
        return response()->json($district);
    }

    public function getThana($id){
        $thana = Thana::where('district_id', $id)->get();
        return response()->json($thana);
    }

    public function eventAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $eventAll = Event::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->latest()->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $eventAll = Event::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->latest()->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $eventAll = Event::where('division_id', $request->division_id)->where('status', 1)->latest()->paginate(20);
        }else{
            $eventAll = Event::where('status', 1)->latest()->paginate(20);
        }

        $division = Division::get();
        return view('frontend.event',compact('eventAll', 'division'));
    }

    public function bloodRequestPostAll(Request $request)
    {
        $currentDate = Carbon::now();
        if($request->division_id && $request->district_id){
            $bloodRequestPostAll = BloodRequest::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->where('date','>=',$currentDate)->paginate(20);
        }elseif($request->division_id && $request->district_id==""){
            $bloodRequestPostAll = BloodRequest::where('division_id', $request->division_id)->where('status', 1)->where('date','>=',$currentDate)->paginate(20);
        }else{
            $bloodRequestPostAll = BloodRequest::where('status', 1)->where('date','>=',$currentDate)->paginate(20);
        }
        
        $division = Division::get();
        return view('frontend.bloodPost',compact('bloodRequestPostAll', 'division'));
    }

    public function donorAll(Request $request)
    {

        if($request->division_id && $request->district_id && $request->thana_id){
            $donorAll = Registration::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $donorAll = Registration::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $donorAll = Registration::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $donorAll = Registration::where('status', 1)->paginate(20);  
        }

        $division = Division::get();
        return view('frontend.donor',compact('donorAll', 'division'));
    }

    public function hospitalAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $hospitalAll = Hospital::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $hospitalAll = Hospital::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $hospitalAll = Hospital::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $hospitalAll = Hospital::where('status', 1)->paginate(20); 
        }

        $division = Division::get();
        return view('frontend.hospital',compact('hospitalAll', 'division'));
    }

    public function universityAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $universityAll = University::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $universityAll = University::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $universityAll = University::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $universityAll = University::where('status', 1)->paginate(20);
        }

        $division = Division::get();
        return view('frontend.university',compact('universityAll', 'division'));
    }

    public function bloodBankAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $bloodBankAll = BloodBank::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $bloodBankAll = BloodBank::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $bloodBankAll = BloodBank::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $bloodBankAll = BloodBank::where('status', 1)->paginate(20);
        }

        $division = Division::get();
        return view('frontend.bloodBank',compact('bloodBankAll', 'division'));
    }

    public function bloodGroupAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $bloodGroupAll = Group::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $bloodGroupAll = Group::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $bloodGroupAll = Group::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $bloodGroupAll = Group::where('status', 1)->paginate(20);
        }

        $division = Division::get();
        return view('frontend.bloodGroup',compact('bloodGroupAll', 'division'));
    }

    public function unusedProductAll(Request $request)
    {
        if($request->division_id && $request->district_id && $request->thana_id){
            $unusedProductAll = UnusedProduct::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('thana_id', $request->thana_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id && $request->thana_id==""){
            $unusedProductAll = UnusedProduct::where('division_id', $request->division_id)->where('district_id', $request->district_id)->where('status', 1)->paginate(20);
        }elseif($request->division_id && $request->district_id=="" && $request->thana_id==""){
            $unusedProductAll = UnusedProduct::where('division_id', $request->division_id)->where('status', 1)->paginate(20);
        }else{
            $unusedProductAll = UnusedProduct::where('status', 1)->paginate(20);
        }

        $division = Division::get();
        return view('frontend.unusedProduct',compact('unusedProductAll', 'division'));
    }
    
    public function healthCard()
    {
        $hospital   = Hospital::where('status', 1)->get();
        $university = University::where('status', 1)->get();

        return view('frontend.healthCard', compact('hospital', 'university'));
    }

    public function privacyPolicy()
    {
        $termConditions = TermCondition::where('type', 'privacy-policy')->where('status', 1)->latest()->get()->first();
        return view('frontend.privacyPolicy',compact('termConditions'));
    }

    public function termCondition()
    {
        $termConditions = TermCondition::where('type', 'term-condition')->where('status', 1)->latest()->get()->first();
        return view('frontend.termCondition',compact('termConditions'));
    }

    public function questions()
    {
        $termConditions = TermCondition::where('type', 'questions')->where('status', 1)->latest()->get()->first();
        return view('frontend.questions',compact('termConditions'));
    }

}
