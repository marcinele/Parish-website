function createTr(columns) {
    let tr = document.createElement('tr');
    for (let i = 0; i < columns; i++) {
        let td = document.createElement('td');
        td.appendChild(document.createTextNode(i + 1));
        tr.appendChild(td);
    }
    return tr;
}

function createTable(columns, rows, columnName) {
    let cols = document.getElementsByClassName(columnName);
    for (let j = 0; j < cols.length; j++) {
        for (let i = 0; i < rows; i++) {
            document.getElementsByClassName(columnName)[j].appendChild(createTr(columns));
        }
    }
}

function clickOnCell() {
    $(function () {
        $('.column td').click(function () {
            var bigColumnName = $(this).closest('table').attr('id');
            var smallColumnId = $(this).index() + 1;
            var rowId = $(this).closest('tr').index() + 1;
            var classList = $(this).attr("class");
            alert("Big column name: " + bigColumnName + "\nSmall column id: " + smallColumnId + "\nRow column id: " + rowId + "\nClass name: " + classList)
        });
    });
}

function setBasicColor() {
    $(function () {
        let tables = document.getElementsByClassName('column');
        for (let j = 0; j < tables.length; j++) {
            for (let i = 0; i < tables[j].rows.length; i++) {
                for (var k = 0; k < tables[j].rows[i].cells.length; k++) {
                    tables[j].rows[i].cells[k].classList.add('unselected');
                }
            }
        }
    });
}

function setColorOnClick() {
    $(function () {
        $('.columnMain td').click(function () {
            let classList = $(this).attr("class");
            if(classList!== "mikroColumn") {
                if (classList === "unselected") {
                    $(this).removeClass("unselected");
                    $(this).addClass("selected");
                    $(this).next().removeClass("unselected");
                    $(this).next().addClass("forbidden");
                    $(this).prev().removeClass("unselected");
                    $(this).prev().addClass("forbidden");
                }
                if (classList === "selected") {
                    $(this).removeClass("selected");
                    $(this).addClass("unselected");
                    if ($(this).next().next().attr("class") !== "selected") {
                        $(this).next().removeClass("forbidden");
                        $(this).next().addClass("unselected");
                    }
                    if ($(this).prev().prev().attr("class") !== "selected") {
                        $(this).prev().removeClass("forbidden");
                        $(this).prev().addClass("unselected");
                    }
                }
            }
        });
    });
}

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
                deleteActualTime();
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

function deleteActualTime() {
    $('.timepicker').pickatime('picker').set('disable', true);
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
    createTable(5, 4, 'longColumn');
    createTable(5, 9, 'shortColumn');
    createTable(1, 4, 'mikroColumn');
    clickOnCell();
    setBasicColor();
    setColorOnClick();
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
    $('#exampleTime').change(function() {
        $.ajax({
            data: {'actualDate': document.getElementById("exampleDate").value,
                   'actualTime': document.getElementById("exampleTime").value},
            type: 'post',
            success: function (response) {
                id = response;
                id = id.slice(0, -1);
                let link = "/index.php?page=placeReservation&id=" + id + "#places";
                $('#dataAndTimeForm').attr('action', link);
            }
        });
    });
});