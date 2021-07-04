$(document).ready(function () {
    $(function () {
        $( "#submitButton" ).click(function() {
            $.ajax({
                data: {'loginEmail': document.getElementById('email').value,
                       'password': document.getElementById('password').value
                },
                type: 'post',
                success: function (response) {
                    window.location.href = '/main';
                }
            });
        });
    });
});
