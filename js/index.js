$(document).ready(function () {
    $(function () {
        $( ".logoutButton" ).click(function() {
            $.ajax({
                data: {'logoutSubmit': 'null'},
                type: 'post',
                success: function (response) {
                    let pathname = window.location.pathname;
                    if (pathname.startsWith('/admin'))
                        window.location.href = '/main';
                    else {
                        window.location.href = '';
                    }
                }
            });
        });
    });
});
