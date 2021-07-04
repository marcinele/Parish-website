$(document).ready(function () {
    $(function () {
        $( ".logoutButton" ).click(function() {
            $.ajax({
                data: {'logoutSubmit': 'null'},
                type: 'post',
                success: function (response) {
                    window.location.href = '';
                }
            });
        });
    });
});
