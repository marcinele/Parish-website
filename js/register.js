var isRecaptchaChecked = false;
var recaptchaExpired = false;

function ValidatePassword() {
    var repeatedPass = '^' + RepeatedPassword() + '$';
    var rules = [{
        Pattern: "[A-Z]",
        Target: "UpperCase"
    },
        {
            Pattern: "[a-z]",
            Target: "LowerCase"
        },
        {
            Pattern: "[0-9]",
            Target: "Numbers"
        },
        {
            Pattern: "[!@@#$%^&*]",
            Target: "Symbols"
        },
        {
            Pattern: repeatedPass,
            Target: "RepeatedPass"
        }
    ];

    var password = document.getElementById("NewPassword").value;

    $("#Length").removeClass(password.length > 6 ? "glyphicon-remove" : "glyphicon-ok");
    $("#Length").addClass(password.length > 6 ? "glyphicon-ok" : "glyphicon-remove");

    for (var i = 0; i < rules.length; i++) {
        var isEverythingCorrect = true;
        $("#" + rules[i].Target).removeClass(new RegExp(rules[i].Pattern).test(password) ? "glyphicon-remove" : "glyphicon-ok");
        $("#" + rules[i].Target).addClass(new RegExp(rules[i].Pattern).test(password) ? "glyphicon-ok" : "glyphicon-remove");
        //console.log($("#" + rules[i].Target).css('color'));
        if ($("#" + rules[i].Target).css('color') === "rgb(255, 0, 0)") {
            isEverythingCorrect = false;
        }
    }
    isEverythingCorrect ? console.log("Wszystko jest git!") : console.log("Nie wszystko jest git.");
    if (isEverythingCorrect && isRecaptchaChecked && !recaptchaExpired) {
        document.getElementById("submitButton").disabled = false;
        document.getElementById("submitButton").enabled = true;
        document.getElementById("submitButton").style.color = 'green';
        document.getElementById("info").style.visibility = "hidden";
    } else {
        document.getElementById("submitButton").disabled = true;
        document.getElementById("submitButton").style.color = 'red';
        document.getElementById("info").style.visibility = "visible";

    }
    console.log(document.getElementById("submitButton".disable))
}

function RepeatedPassword() {
    var inputVal = document.getElementById("RepeatedPassword").value;
    return (inputVal);
}

$(document).ready(function () {
    $("#NewPassword").on('keyup', ValidatePassword)
    $("#RepeatedPassword").on('keyup', RepeatedPassword, ValidatePassword)
});


function recaptchaCallback() {
    isRecaptchaChecked = true;
    recaptchaExpired = false;
    ValidatePassword();
}

function expiredCallback(){
    recaptchaExpired = true;
    ValidatePassword();
}