let all_hours = ''

function checkDateInput() {
    $('#exampleDate').change(function () {
        let text = $(this).val()
        $.ajax({
            data: {'chosenDate': $(this).val()},
            type: 'post',
            success: function (response) {
                all_hours = response;
                let mass_counter = all_hours.split(" ").length - 1;
                switch(mass_counter){
                    case 0:
                        document.getElementById("exampleTime").value = "Brak mszy w ten dzień.";
                        break;
                    case 1:
                        document.getElementById("exampleTime").value = mass_counter + " msza w ten dzień";
                        break;
                    case 2:
                    case 3:
                    case 4:
                        document.getElementById("exampleTime").value = mass_counter + " msze w ten dzień";
                        break;
                    default:
                        document.getElementById("exampleTime").value = mass_counter + " mszy w ten dzień";
                        break;
                }
                fillActualTime();
                setTime(format_data(all_hours));
            }
        });
    });
}

function format_data(hours) {
    let final_array = [];
    let hours1 = hours.slice(1, -1);
    let splitted_hours = hours1.split(" ");
    let formatted_data = "";
    for (const element of splitted_hours) {
        let part1 = (element.slice(0, 2).startsWith("0")) ? element.slice(1, 2) : element.slice(0, 2);
        let part2 = (element.slice(3, 5).startsWith("0")) ? element.slice(4, 5) : element.slice(3, 5);

        let small_array = [];
        formatted_data = formatted_data + "[" + part1 + "," + part2 + "], ";
        small_array.push(part1, part2)
        final_array.push(small_array)
    }
    return final_array;
}

function fillActualTime() {
    $('.timepicker').pickatime('picker').set('disable', false);
}

function setTime(dates) {
    $('.timepicker').pickatime('picker').set('disable', dates);
}

function validateInput(){
    let dateInput = document.getElementById("exampleDate").value;
    let timeInput = document.getElementById("exampleTime").value;
    let validateDate = new RegExp("^\\d{4}\\-(0?[1-9]|1[012])\\-(0?[1-9]|[12][0-9]|3[01])$").test(dateInput);
    let validateTime = new RegExp("^([0-1]?[0-9]|2[0-3]):[0-5]?[0-9]$").test(timeInput);
    if(validateDate && validateTime){
        document.getElementById("submitButton").disabled = false;
        document.getElementById("submitButton").enabled = true;
        document.getElementById("submitButton").style.color = 'green';
        document.getElementById("info").style.visibility = "hidden";
    } else {
        document.getElementById("submitButton").disabled = true;
        document.getElementById("submitButton").style.color = 'red';
        document.getElementById("info").style.visibility = "visible";
    }
}

$(document).ready(function () {
    $('.datepicker').pickadate({
        closeOnSelect: false,
        format: 'yyyy-mm-dd',
    });
    checkDateInput();
    $('.timepicker').pickatime({
        closeOnSelect: false,
        format: 'H:i',
        min: [6, 0],
        max: [20, 0],
        interval: 90,
        disable: [true, ],
        clear: ''
    });
    let t = setInterval(validateInput,1);
    let id;
    $('#submitButton').click(function() {
        $.ajax({
            data: {'actualDate': document.getElementById("exampleDate").value,
                   'actualTime': document.getElementById("exampleTime").value},
            type: 'post',
            success: function (response) {
                id = response;
                alert('Dodano msze!')
                location.reload();
            }
        });
    });
});