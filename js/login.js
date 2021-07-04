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
                            alert('Poprawnie zalogowano!');
                            window.location.href = '/main';
                            break;
                        case 2:
                            alert('Niepoprawne hasło. Spróbuj ponownie.');
                            break;
                        default:
                            alert('Nie znaleziono podanego adresu email w bazie. Spróbuj ponownie.');
                            break;
                    }
                }
            });
        });
    });
});
