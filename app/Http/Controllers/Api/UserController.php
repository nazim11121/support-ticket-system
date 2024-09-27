<?php

namespace App\Http\Controllers\Api;

use Validator;
use App\Models\User;
use App\Models\Thana;
use App\Models\Group;
use App\Models\Event;
use App\Models\Slider;
use App\Models\District;
use App\Models\Division;
use App\Models\Hospital;
use App\Models\BloodBank;
use App\Models\University;
use App\Models\Transaction;
use App\Models\BloodRequest;
use Illuminate\Http\Request;
use App\Models\Registration;
use App\Models\RequestResponse;
use App\Models\WithdrawRequest;
use Illuminate\Support\Carbon;
use App\Models\HpvVaccineCentre;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Intervention\Image\ImageManagerStatic as Image;
use DB;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (Auth::attempt($request->only('email', 'password'))) {
            $user = User::with('donorDetails')->where('id', Auth::user()->id)->get();
            $token = Auth::user()->createToken('MyAppToken')->plainTextToken;

            return response()->json(['token' => $token, 'user' => $user], 200);

        }else{

            throw ValidationException::withMessages([
            'email' => ['The provided credentials are incorrect.'],
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function hospital_list(Request $request)
     {
         $hospitaldata = Hospital::where('status', 1)->paginate(10);
         $hospital=array(
             'alldata'=>$hospitaldata,
         );
         return response()->json($hospital);
 
     }

    public function university_list(Request $request)
    {
        $data = University::where('status', 1)->get();
        $university=array(
            'data'=>$data,
        );
        return response()->json($university);

    }

    public function group_list(Request $request)
    {
        $data = Group::where('status', 1)->get();
        $group=array(
            'data'=>$data,
        );
        return response()->json($group);

    }

    public function location(Request $request){
       
        $division = Division::get();
        $district = District::get();
        $thana = Thana::get();
       
        return response()->json(['division'=> $division,'district'=> $district,'thana'=> $thana]);
    }

    public function division_list(Request $request){
        $division = Division::get();
        return response()->json($division);
    }

    public function district_list(Request $request){
        $district = District::get();
        return response()->json($district);
    }

    public function thana_list(Request $request){
        $thana = Thana::get();
        return response()->json($thana);
    }

    public function registration(Request $request){

        $validator = Validator::make($request->all(), [
            'donate_check' => 'required',
            'last_donate_date' => 'nullable',
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|regex:/^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/|unique:registrations,email,$id',
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
             return response()->json(['errors' => $validator->errors()], 422);
            // return Redirect::back()->withErrors($validator);
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
            $user->name = $request->first_name . $request->last_name;
            $user->email = $request->email;
            $user->password = Hash::make($request->mobile);
            $user->donor_id = $registration->id;
            $user->save();

            $number = $request->mobile;
            $text = 'Thank you for registration. Your Login Credentials is User ID: ' .$request->email. ' primary Password is: ' .$request->mobile. ' . If any question: wa.me/8801970248241';

        // $this->sendsms($number,$text);

            return response()->json($registration);  
        }
    }

    public function profile(Request $request)
    {
        $id = $request->user()->id;
        $data = [
            'message' => 'Data retrieved successfully',
            'profile' => User::with('donorDetails')->findOrFail($id),
        ];

        return response()->json($data);
    }

    public function slider(Request $request){

        $data = [
            'message' => 'Data retrieved successfully',
            'slider' => Slider::get(),
        ];
       
        return response()->json($data);
    }

    public function event(Request $request){

        $data = [
            'message' => 'Data retrieved successfully',
            'slider' => Event::get(),
        ];
       
        return response()->json($data);
    }

    public function requestListPersonal(Request $request){
        
        $id = $request->user()->id;
        $data = [
            'message' => 'Data retrieved successfully',
            'requestList' => BloodRequest::with('requestResponse','hospital')->where('request_by', $id)->orderBy('id','desc')->get(),
        ];
        return response()->json($data, 200);
    }

    public function requestListWithoutPersonal(Request $request){
        
        $id = $request->user()->id;
        $data = [
            'message' => 'Data retrieved successfully',
            'requestList' => BloodRequest::with('requestResponse','hospital')->where('request_by','!=', $id)->orderBy('date','asc')->get(),
        ];
        return response()->json($data, 200);
    }

    public function requestListAll(Request $request){
        
        $data = [
            'message' => 'Data retrieved successfully',
            'requestList' => BloodRequest::with('hospital')->orderBy('date','asc')->get(),
        ];

        return response()->json($data, 200);
    }

    // public function bloodRequest(Request $request){

    //     $validator = Validator::make($request->all(), [
    //         'request_by' => 'required',
    //         'patient_name' => 'nullable',
    //         'patient_problem' => 'required',
    //         'age' => 'required',
    //         'gender' => 'required',
    //         'blood_group' => 'required',
    //         'blood_quantity' => 'required',
    //         'date' => 'required',
    //         'time' => 'nullable',
    //         'contact_number' => 'required|min:11|max:11',
    //         'division_id' => 'required',
    //         'district_id' => 'required',
    //         'hospital_name' => 'required',
    //         'request_type' => 'nullable',
    //         'description' => 'nullable',
    //         'status' => 'nullable',
    //     ]);

    //     if($validator->fails()) {
    //          return response()->json(['errors' => $validator->errors()], 422);
    //     }else{

    //         $data = $request->all();
    //         $bloodRequest = BloodRequest::create($data);
    //         return response()->json(['bloodRequest'=>$bloodRequest], 200);
    //     }
    // }

    public function requestStore(Request $request)
    {
        
        $validatedData = $request->validate([
            'request_by' => 'required',
            'patient_name' => 'nullable',
            'patient_problem' => 'required',
            'age' => 'required',
            'gender' => 'required',
            'blood_group' => 'required',
            'blood_quantity' => 'required',
            'date' => 'required',
            'time' => 'nullable',
            'contact_number' => 'required|min:11|max:11',
            'division_id' => 'required',
            'district_id' => 'required',
            'hospital_name' => 'required',
            'request_type' => 'nullable',
            'description' => 'nullable',
            'status' => 'nullable',
            'payment_amount' => 'nullable',
        ]);

        $data = $request->all();
        $bloodRequest = BloodRequest::create($data);
        $requestPerson = User::find($request->request_by);
        
        $post_data['tran_id'] = chr(rand(65,90)) . rand(0,9) . chr(rand(65,90)) . chr(rand(65,90)) . rand(0,9) . chr(rand(65,90)) . chr(rand(65,90)) . chr(rand(65,90)) . rand(0,9) . rand(0,9) . chr(rand(65,90)) . chr(rand(65,90)) . chr(rand(65,90)) . rand(0,9) . chr(rand(65,90)) . chr(rand(65,90));
        
        $item=[
            'cus_name'=>$requestPerson->name,
            'cus_email'=>$requestPerson->email,
            'cus_add1'=>$request->district_id,
            'value_a'=>$bloodRequest->id,
            'value_d'=>$post_data['tran_id'],
            'total_amount'=>$request->payment_amount,
        ];
        
        
        return response()->json($item, 200);
    }

    public function paymentSuccess(Request $request)
    {

         $dat = $request->all();
        
        // dd($data['tran_id'] ?? NULL);
        $transaction = Transaction::create([
            'tran_id' => $dat['tran_id'] ?? NULL,
            'val_id' => $dat['val_id'] ?? NULL,
            'amount' => $dat['amount'] ?? NULL,
            'card_type' => $dat['card_type'] ?? NULL,
            'store_amount' => $dat['store_amount'] ?? NULL,
            'card_no' => $dat['card_no'] ?? NULL,
            'bank_tran_id' => $dat['bank_tran_id'] ?? NULL,
            'status' => $dat['status'] ?? NULL,
            'tran_date' => $dat['tran_date'] ?? NULL,
            'currency' => $dat['currency'] ?? NULL,
            'card_issuer' => $dat['card_issuer'] ?? NULL,
            'card_brand' => $dat['card_brand'] ?? NULL,
            'card_issuer_country' => $dat['card_issuer_country'] ?? NULL,
            'card_issuer_country_code' => $dat['card_issuer_country_code'] ?? NULL,
            'store_id' => $dat['store_id'] ?? NULL,
            'verify_sign' => $dat['verify_sign'] ?? NULL,
            'verify_key' => $dat['verify_key'] ?? NULL,
            'cus_fax' => $dat['cus_fax'] ?? NULL,
            'verify_sign_sha2' => $dat['verify_sign_sha2'] ?? NULL,
            'currency_type' => $dat['currency_type'] ?? NULL,
            'currency_amount' => $dat['currency_amount'] ?? NULL,
            'currency_rate' => $dat['currency_rate'] ?? NULL,
            'base_fair' => $dat['base_fair'] ?? NULL,
            'value_a' => $dat['value_a'] ?? NULL,
            'value_b' => $dat['value_b'] ?? NULL,
            'value_c' => $dat['value_c'] ?? NULL,
            'value_d' => $dat['value_d'] ?? NULL,
            'risk_level' => $dat['risk_level'] ?? NULL,
            'risk_title' => $dat['risk_title'] ?? NULL,
            'error' => $dat['error'] ?? NULL,
            'key' => $dat['key'] ?? NULL,
            'pass' => $dat['pass'] ?? NULL,
        ]);
        
        $details = BloodRequest::find($request->value_a);
        if($request->status=='VALID'){
            $details->status = 1;
            $details->payment_status = 'Paid';
            // $details->updated_by = Auth::user()->id; 
            $details->save();
        }

        $number = $details->contact_number;
        $text = 'Your Payment Success and Post on published Now. If any question: wa.me/8801970248241';
        // $this->sendsms($number,$text);

        return response()->json(['dat'=>$dat], 200);

        // return redirect()->route('home')->with('success', 'Payment successfull and Post is successfully published');

    }

    public function paymentFail(Request $request)
    {   

            $data = $request->all();
            $transaction = Transaction::create([
                'tran_id' => $data['tran_id'] ?? NULL,
                'val_id' => $data['val_id'] ?? NULL,
                'amount' => $data['amount'] ?? NULL,
                'card_type' => $data['card_type'] ?? NULL,
                'store_amount' => $data['store_amount'] ?? NULL,
                'card_no' => $data['card_no'] ?? NULL,
                'bank_tran_id' => $data['bank_tran_id'] ?? NULL,
                'status' => $data['status'] ?? NULL,
                'tran_date' => $data['tran_date'] ?? NULL,
                'currency' => $data['currency'] ?? NULL,
                'card_issuer' => $data['card_issuer'] ?? NULL,
                'card_brand' => $data['card_brand'] ?? NULL,
                'card_issuer_country' => $data['card_issuer_country'] ?? NULL,
                'card_issuer_country_code' => $data['card_issuer_country_code'] ?? NULL,
                'store_id' => $data['store_id'] ?? NULL,
                'verify_sign' => $data['verify_sign'] ?? NULL,
                'verify_key' => $data['verify_key'] ?? NULL,
                'cus_fax' => $data['cus_fax'] ?? NULL,
                'verify_sign_sha2' => $data['verify_sign_sha2'] ?? NULL,
                'currency_type' => $data['currency_type'] ?? NULL,
                'currency_amount' => $data['currency_amount'] ?? NULL,
                'currency_rate' => $data['currency_rate'] ?? NULL,
                'base_fair' => $data['base_fair'] ?? NULL,
                'value_a' => $data['value_a'] ?? NULL,
                'value_b' => $data['value_b'] ?? NULL,
                'value_c' => $data['value_c'] ?? NULL,
                'value_d' => $data['value_d'] ?? NULL,
                'risk_level' => $data['risk_level'] ?? NULL,
                'risk_title' => $data['risk_title'] ?? NULL,
                'error' => $data['error'] ?? NULL,
                'key' => $data['key'] ?? NULL,
                'pass' => $data['pass'] ?? NULL,
            ]);

            session()->put('danger','Payment Failed.');
            // return redirect()->route('blood-request.index', $transaction->value_a);
            return response()->json(['transaction'=>$transaction], 200);
    }


    public function paymentCancel(Request $request)
    {   

            $data = $request->all();
                    
            $transaction = Transaction::create([
                'tran_id' => $data['tran_id'] ?? NULL,
                'val_id' => $data['val_id'] ?? NULL,
                'amount' => $data['amount'] ?? NULL,
                'card_type' => $data['card_type'] ?? NULL,
                'store_amount' => $data['store_amount'] ?? NULL,
                'card_no' => $data['card_no'] ?? NULL,
                'bank_tran_id' => $data['bank_tran_id'] ?? NULL,
                'status' => $data['status'] ?? NULL,
                'tran_date' => $data['tran_date'] ?? NULL,
                'currency' => $data['currency'] ?? NULL,
                'card_issuer' => $data['card_issuer'] ?? NULL,
                'card_brand' => $data['card_brand'] ?? NULL,
                'card_issuer_country' => $data['card_issuer_country'] ?? NULL,
                'card_issuer_country_code' => $data['card_issuer_country_code'] ?? NULL,
                'store_id' => $data['store_id'] ?? NULL,
                'verify_sign' => $data['verify_sign'] ?? NULL,
                'verify_key' => $data['verify_key'] ?? NULL,
                'cus_fax' => $data['cus_fax'] ?? NULL,
                'verify_sign_sha2' => $data['verify_sign_sha2'] ?? NULL,
                'currency_type' => $data['currency_type'] ?? NULL,
                'currency_amount' => $data['currency_amount'] ?? NULL,
                'currency_rate' => $data['currency_rate'] ?? NULL,
                'base_fair' => $data['base_fair'] ?? NULL,
                'value_a' => $data['value_a'] ?? NULL,
                'value_b' => $data['value_b'] ?? NULL,
                'value_c' => $data['value_c'] ?? NULL,
                'value_d' => $data['value_d'] ?? NULL,
                'risk_level' => $data['risk_level'] ?? NULL,
                'risk_title' => $data['risk_title'] ?? NULL,
                'error' => $data['error'] ?? NULL,
                'key' => $data['key'] ?? NULL,
                'pass' => $data['pass'] ?? NULL,
            ]);

            session()->put('warning','Payment Cancel.');

            return response()->json(['transaction'=>$transaction], 200);

            // return redirect()->route('blood-request.index', $transaction->value_a);
    }

    public function paymentIPN(Request $request)
    {
            dd($request->all());
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

    public function hospital_list_filter($id1,$id2,$id3)
    {
        if($id1 && $id2 && $id3){
            $data = Hospital::where('division_id', $id1)->where('district_id', $id2)->where('thana_id', $id3)->where('status', 1)->get();
        }elseif($id1 && $id2==null && $id3==null){
            $data = Hospital::where('division_id', $id1)->where('status', 1)->get();
        }elseif($id1 && $id2 && $id3==null){
            $data = Hospital::where('division_id', $id1)->where('district_id', $id2)->where('status', 1)->get();
        }else{
            $data = Hospital::where('status', 1)->get();
        }
        
        $hospital=array(
            'data'=>$data,
        );
        return response()->json($hospital, 200);

    }

    public function apply(Request $request){
        
        $data = $request->all();
        $data = RequestResponse::create($data);

        $apply=array(
            'data'=>$data,
        );

        return response()->json($apply, 200);
    }

    public function responseListIndividual($id1){

        $data = RequestResponse::with('donor','giver')->where('user', $id1)->get();
        $responseList=array(
            'data'=>$data,
        );
        return response()->json($responseList, 200);
    }

    public function responseList(){

        $data = RequestResponse::with('donor')->get();
        $responseList=array(
            'data'=>$data,
        );
        return response()->json($responseList, 200);
    }

    public function accept(Request $request){

        $payment_code = random_int(100000, 999999);

        $data = RequestResponse::find($request->id);
        $data->status = $request->status;
        $data->payment_code = $payment_code;
        $data->save();

        $accept=array(
            'data'=>$data,
        );

        return response()->json($accept, 200);
    }

    public function withdrawStore(Request $request){

        $data = $request->all();
        $requestResponseId = RequestResponse::where('request_id', $request->request_id)->get()->pluck('id')->first();
        $requestResponse = RequestResponse::find($requestResponseId);

        if($request->payment_code == $requestResponse->payment_code && $requestResponse->donor_paid_status == 0){

            $data['request_response_id'] = $requestResponseId;
            $data = WithdrawRequest::create($data);
            
            $requestResponse->donor_paid_status = 1;
            $requestResponse->save();

            $bloodRequest = BloodRequest::find($requestResponse->request_id);
            $bloodRequest->donor_response = $bloodRequest->donor_response+1;
            $bloodRequest->save();

            $data=array(
                'bloodRequest'=>$bloodRequest,
            );

            return response()->json($data, 200);
        }
    }
    
    public function userList(){
        $user = User::with('donorDetails')->get();
        $data=array(
                'list'=>$user,
        );

        return response()->json($data, 200);
    }

    public function achivementList(){
        
        $achievement = array(
            'totalHospital'     =>  Hospital::where('status', 1)->get()->count(),
            'totalUniversity'   =>  University::where('status', 1)->get()->count(),
            'totalGroup'        =>  Group::where('status', 1)->get()->count(),
            'totalEvent'        =>  Event::where('status', 1)->get()->count(),
            'totalDonor'        =>  Registration::where('status', 1)->get()->count(),
        );

        return response()->json($achievement, 200);
    }

    public function eventList(){
        $eventList = Event::where('status', 1)->get();
        $data=array(
                'eventList'=>$eventList,
        );

        return response()->json($data, 200);
    }

    public function bloodBankList(){
        $bloodBankList = BloodBank::where('status', 1)->get();
        $data=array(
                'bloodBankList'=>$bloodBankList,
        );

        return response()->json($data, 200);
    }

    public function groupList(){
        $groupList = Group::where('status', 1)->get();
        $data=array(
                'groupList'=>$groupList,
        );

        return response()->json($data, 200);
    }
    
    public function hpv(Request $request){

        $hpvDetails = HpvVaccineCentre::where('status', 1)->get();
        $data=array(
                'hpvDetails'=>$hpvDetails,
        );

        return response()->json($data, 200);
    }
    
    public function findNearestVaccineCentre(Request $request){
        // echo 'hi';
        $id = $request->user()->id;

        if($request->latitude!='' && $request->longitude!=''){
            $lat  =  $request->latitude;
            $long =  $request->longitude;
        }else{
            $lat  =  $request->user()->donorDetails->address_latitude;
            $long =  $request->user()->donorDetails->address_longitude;
        }

        $latitude  =  $lat; //24.3746497;
        $longitude =  $long; //88.60036649999999;

        $centres = $this->findVaccineCentresFromDatabase($latitude, $longitude);

        foreach ($centres as $centre) {
           $dist = number_format($centre->distance, 2);
           $data[] = array('CentreName'=>$centre->name . ' '.$dist .'km'.'<br>');
        }
        
        return response()->json($data, 200);
    }

    private function findVaccineCentresFromDatabase($latitude, $longitude, $radius = 3000) {
        // Calculate distance using Haversine formula
        $haversine = "(6371 * acos(cos(radians($latitude)) * cos(radians(address_latitude)) * cos(radians(address_longitude) - radians($longitude)) + sin(radians($latitude)) * sin(radians(address_latitude))))";
        
        // Query centres within the specified radius
        $centres = HpvVaccineCentre::select('*', DB::raw("{$haversine} AS distance"))
            ->having('distance', '<', $radius)
            ->orderBy('distance')
            // ->take(3)
            ->get();
    
        return $centres;
    }
    
}
