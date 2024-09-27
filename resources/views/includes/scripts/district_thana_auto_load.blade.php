<script type="text/javascript">
    !(function($){
        "use strict";
            // Load country wise state
            $('#district_id').on('change',function(e){
                let district_id = e.target.value;
                
                $.ajax({
                    url: "{{url('/admin/hospital/district-wise-thana/')}}"+'/'+district_id,
                    type: "GET",
                    dataType: "JSON",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(data){
                        let thana_id =  $('#thana_id').empty();
                        thana_id.append('<option class="form-control" value="" selected disabled>Select Thana</option>');
                        $.each(data,function(key,val){
                            thana_id.append('<option value ="'+val.id+'">'+val.name+'</option>');
                        });
                    }
                })
            });
    })(jQuery)
</script>

