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
        $('.columnMain td').click(function () {
            let elementId = $(this).parent().parent().attr('id');
            if (elementId !== "columnx") {
                var bigColumnName = $(this).closest('table').attr('id');
                var smallColumnId = $(this).index() + 1;
                var rowId = $(this).closest('tr').index() + 1;
                var classList = $(this).attr("class");
                /*alert("Big column name: " + bigColumnName + "\nSmall column id: " + smallColumnId + "\nRow column id: " + rowId + "\nClass name: " + classList)*/
            }
        });
    });
}

function setBasicColor() {
    $(function () {
        let tables = document.getElementsByClassName('columnMain');
        for (let j = 0; j < tables.length; j++) {
            for (let i = 0; i < tables[j].rows.length; i++) {
                for (var k = 0; k < tables[j].rows[i].cells.length; k++) {
                    tables[j].rows[i].cells[k].classList.add('unselected');
                }
            }
        }
    });
}

let allowForbiddenPlaces = false;

function checkForbiddenPlaces() {
    $(function () {
        $('#enable').change(function () {
            if (this.checked) {
                allowForbiddenPlaces = true;
            } else {
                allowForbiddenPlaces = false;
            }
        });
    });
}

function formatExampleCells() {
    $(function () {
        let table = document.getElementById('columnx');
        table.rows[0].cells[0].classList.add('unselected');
        table.rows[1].cells[0].classList.add('selected');
        table.rows[2].cells[0].classList.add('taken');
        table.rows[3].cells[0].classList.add('forbidden');
        table.rows[0].cells[1].innerText = "Available";
        table.rows[1].cells[1].innerText = "Chosen by you";
        table.rows[2].cells[1].innerText = "Taken";
        table.rows[3].cells[1].innerText = "Not available due to the restrictions";
    });
}

function setColorOnClick() {
    $(function () {
        $('.columnMain td').click(function () {
            let classList = $(this).attr("class");
            let elementId = $(this).parent().parent().attr('id');
            if (elementId !== "columnx") {
                if (classList === "unselected") {
                    // Aktualny element jest odznaczony
                    // Zmiana odnzaczonego na zaznaczony
                    $(this).removeClass("unselected");
                    $(this).addClass("selected");

                    if ($(this).next().attr("class") !== "selectedButPreviouslyForbidden"
                        && $(this).next().attr("class") !== "taken"
                        && $(this).next().attr("class") !== "forbiddenBySomeoneElse") {
                        // zmień następny na zabroniony
                        $(this).next().removeClass("unselected");
                        $(this).next().addClass("forbidden");
                    }

                    if ($(this).prev().attr("class") !== "selectedButPreviouslyForbidden"
                        && $(this).prev().attr("class") !== "taken"
                        && $(this).prev().attr("class") !== "forbiddenBySomeoneElse") {
                        // zmien poprzedni na zabroniony
                        $(this).prev().removeClass("unselected");
                        $(this).prev().addClass("forbidden");
                    }
                }
                if (classList === "selected") {
                    // Aktualny element jest zaznaczny
                    // Zmiana zaznaczonego na odznaczony
                    $(this).removeClass("selected");
                    $(this).addClass("unselected");

                    // Jeżeli dwa dalej nie jest wybrany, to zmień jeden dalej na niewybrany
                    if ($(this).next().next().attr("class") !== "selected"
                        && $(this).next().attr("class") !== "selectedButPreviouslyForbidden"
                        && $(this).next().attr("class") !== "forbiddenBySomeoneElse") {
                        $(this).next().removeClass("forbidden");
                        $(this).next().addClass("unselected");
                    }

                    // Jeżeli dwa wcześniej nie jest wybrany, to zmień jeden wcześniej na niewybrany
                    if ($(this).prev().prev().attr("class") !== "selected"
                        && $(this).prev().attr("class") !== "selectedButPreviouslyForbidden"
                        && $(this).prev().attr("class") !== "forbiddenBySomeoneElse") {
                        $(this).prev().removeClass("forbidden");
                        $(this).prev().addClass("unselected");
                    }
                }
                if (classList === "forbidden" && allowForbiddenPlaces) {
                    $(this).removeClass("forbidden");
                    $(this).addClass("selectedButPreviouslyForbidden");
                }
                if (classList === "selectedButPreviouslyForbidden") {
                    $(this).removeClass("selectedButPreviouslyForbidden");
                    // Jeżeli wcześniej był Forbidden, a nadal jest obok selected
                    if ($(this).prev().attr("class") === "selected" || $(this).next().attr("class") === "selected") {
                        $(this).addClass("forbidden");
                    } else {
                        $(this).addClass("unselected");
                    }
                }
                if (classList === "forbiddenBySomeoneElse" && allowForbiddenPlaces) {
                    $(this).removeClass("forbiddenBySomeoneElse");
                    $(this).addClass("selectedButPreviouslyForbiddenBySomeoneElse");
                }
                if (classList === "selectedButPreviouslyForbiddenBySomeoneElse") {
                    $(this).removeClass("selectedButPreviouslyForbiddenBySomeoneElse");
                    $(this).addClass("forbiddenBySomeoneElse");
                }
            }
        });
    });
}

    function drawTakenPlaces(takenPlaces) {
        /*alert(takenPlaces);*/
        for (const actualPlace of takenPlaces) {
            /*console.log(actualPlace);*/
            let actual_column = actualPlace[0];
            let actual_x = actualPlace[1];
            let actual_y = actualPlace[2];
            let table = document.getElementById(actual_column);
            let place = table.rows[actual_y].cells[actual_x];
            $(place).removeClass("unselected");
            $(place).addClass("taken");
        }
    }

    function drawForbiddenPlaces(forbiddenPlaces) {
        /*alert(forbiddenPlaces);*/
        for (const actualPlace of forbiddenPlaces) {
            /*console.log(actualPlace);*/
            let actual_column = actualPlace[0];
            let actual_x = actualPlace[1];
            let actual_y = actualPlace[2];
            let table = document.getElementById(actual_column);
            let place = table.rows[actual_y].cells[actual_x];
            $(place).removeClass("unselected");
            $(place).addClass("forbiddenBySomeoneElse");
        }
    }

    function finalPost() {
        $(function () {
            let finalDataTaken = [];
            let finalDataForbidden = [];
            let tables = document.getElementsByClassName('columnMain');
            for (let j = 0; j < tables.length; j++) {
                for (let i = 0; i < tables[j].rows.length; i++) {
                    for (var k = 0; k < tables[j].rows[i].cells.length; k++) {
                        let singlePlaceData = [];
                        let actualCell = tables[j].rows[i].cells[k];
                        let classList = $(actualCell).attr("class");
                        let elementId = $(actualCell).parent().parent().attr('id');
                        if (classList === 'selected' || classList === 'selectedButPreviouslyForbidden') {
                            singlePlaceData.push(elementId, k, i);
                            finalDataTaken.push(singlePlaceData);
                        }
                        if (classList === 'forbidden') {
                            singlePlaceData.push(elementId, k, i);
                            finalDataForbidden.push(singlePlaceData);
                        }
                    }
                }
            }
            $.ajax({
                data: {'finalPostTaken': finalDataTaken},
                type: 'post',
                success: function (response) {
                }
            });
            $.ajax({
                data: {'finalPostForbidden': finalDataForbidden},
                type: 'post',
                success: function (response) {
                }
            });
        });
    }


    $(document).ready(function () {
        createTable(5, 4, 'longColumn');
        createTable(5, 9, 'shortColumn');
        createTable(2, 4, 'mikroColumn');
        clickOnCell();
        setBasicColor();
        setColorOnClick();
        formatExampleCells();
        checkForbiddenPlaces();

        $.ajax({
            data: {'firstPostTakenPlaces': window.location.href},
            type: 'post',
            success: function (response) {
                /*alert(response)*/
                drawTakenPlaces(JSON.parse(response));
            }
        });
        $.ajax({
            data: {'firstPostForbiddenPlaces': allowForbiddenPlaces},
            type: 'post',
            success: function (response) {
                drawForbiddenPlaces(JSON.parse(response));
            }
        });

        $(function () {
            $('#submitButton').click(function () {
                finalPost();
            });
        });
    });