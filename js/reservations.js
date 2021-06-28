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
        $('.column td').click(function () {
            let classList = $(this).attr("class");
            if(classList === "unselected"){
                $(this).removeClass("unselected");
                $(this).addClass("selected");
                $(this).next().removeClass("unselected");
                $(this).next().addClass("forbidden");
                $(this).prev().removeClass("unselected");
                $(this).prev().addClass("forbidden");
            }
            if(classList === "selected"){
                $(this).removeClass("selected");
                $(this).addClass("unselected");
                if($(this).next().next().attr("class") !== "selected") {
                    $(this).next().removeClass("forbidden");
                    $(this).next().addClass("unselected");
                }
                if($(this).prev().prev().attr("class") !== "selected") {
                    $(this).prev().removeClass("forbidden");
                    $(this).prev().addClass("unselected");
                }
            }
        });
    });
}

$(document).ready(function () {
    createTable(5, 4, 'longColumn');
    createTable(5, 9, 'shortColumn');
    clickOnCell();
    setBasicColor();
    setColorOnClick();
    // date picker
    $( '.datepicker' ).pickadate({
        closeOnSelect: false
    });
    // time picker
    $('.timepicker').pickatime({
        closeOnSelect: false,
        format: 'H:i',
        min: [6,0],
        max: [20,0],
        interval: 90,
        delete: [
            [13,30],
            [15,0],
            [16,30],
            [9,0]
        ],
        clear: ''
    });
});
