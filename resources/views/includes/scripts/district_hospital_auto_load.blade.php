<script type="text/javascript">
    !(function($){
        "use strict";
            // Load country wise state
            $('#district_id').on('change',function(e){
                let district_id = e.target.value;
                
                $.ajax({
                    url: "{{url('/admin/hospital/district-wise-hospital/')}}"+'/'+district_id,
                    type: "GET",
                    dataType: "JSON",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(data){
                        let hospital_id =  $('#hospital_id').empty();
                        hospital_id.append('<option class="form-control" value="" selected disabled>Select Hospital</option>');
                        $.each(data,function(key,val){
                            hospital_id.append('<option value ="'+val.id+'">'+val.name+'</option>');
                        });
                    }
                })
            });
    })(jQuery)
</script>

