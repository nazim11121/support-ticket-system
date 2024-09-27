<script type="text/javascript">
    !(function($){
        "use strict";
            // Load country wise state
            $('#division_id').on('change',function(e){
                let division_id = e.target.value;
                // console.log(division_id);
                $.ajax({
                    url: "{{url('/admin/hospital/division-wise-district/')}}"+'/'+division_id,
                    type: "GET",
                    dataType: "JSON",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(data){

                        let district_id =  $('#district_id').empty();
                        district_id.append('<option class="form-control" value="" selected disabled>Select District</option>');
                        $.each(data,function(key,val){
                            district_id.append('<option value ="'+val.id+'">'+val.name+'</option>');
                        });
                    }
                })
            });
    })(jQuery)
</script>
