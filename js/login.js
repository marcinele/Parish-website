$(document).ready(function () {
    $(function () {
        $( "#submitButton" ).click(function() {
            $.ajax({
                data: {'loginEmail': document.getElementById('email').value,
                       'password': document.getElementById('password').value
                },
                type: 'post',
                success: function (response) {
                    let output = parseInt(response);
                    switch(output){
                        case 1:
                            alert('Successfully logged in.');
                            window.location.href = '/main';
                            break;
                        case 2:
                            alert('Incorrect password. Try again.');
                            break;
                        default:
                            alert('The given e-mail address was not found in the database. Try again.');
                            break;
                    }
                }
            });
        });
    });
});
