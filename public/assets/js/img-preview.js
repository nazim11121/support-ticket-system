function filePreview(input) { 
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            
            $('#imgs').attr('src', e.target.result);                    };
        reader.readAsDataURL(input.files[0]);
    }
}
$("#image").change(function () {
    filePreview(this);
});