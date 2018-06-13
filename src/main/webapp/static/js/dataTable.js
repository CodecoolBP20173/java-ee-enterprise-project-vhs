$(document).ready(function () {
    $("#accessDenied").show();
    let firstCarouselItem = $('.carousel-item:first');
    firstCarouselItem.addClass('active');

    initDataTable();
    authButtons();
    onSort();
    setupRows();
});

function initDataTable() {
    $('#movies_list').DataTable();
    $('#movies_list').on( 'draw.dt', function () {
        setupRows();
        $('#jumbo').hide('slow');
    } );
}


function onSort() {
    let rows = document.getElementsByTagName("tr");
    rows[0].addEventListener("click", function () {
        setupRows();
    });

}

function setupRows() {
    let rows = document.getElementsByTagName("tr");
    for (let i = 1; i < rows.length; i++) {
        var old_element = rows[i];
        var new_element = old_element.cloneNode(true);
        old_element.parentNode.replaceChild(new_element, old_element);

        rows[i].addEventListener("mouseover", function (e) {
            rows[i].style.backgroundColor = "#434a50";
            rows[i].style.color = "#888888";
        });
        rows[i].addEventListener("mouseout", function (e) {
            rows[i].style.backgroundColor = "#343a40";
            rows[i].style.color = "white";
        });
        rows[i].addEventListener("click", function (e) {
            rows[i].getAttribute("id");
            populateModal(e.target.parentNode.getAttribute("id"));

            e.preventDefault()
        })
    }
}

function authButtons()
{
    let loginButton = document.getElementById("loginButton");
    let logoutButton = document.getElementById("logoutButton");
    let registerButton = document.getElementById("registerButton");
    let logLabelContent = document.getElementById("logLabel").innerText;

    if(logLabelContent === "You are not logged in"){
        loginButton.style.visibility = "visible";
        registerButton.style.visibility = "visible";
        logoutButton.style.visibility = "hidden";
    } else {
        loginButton.style.visibility = "hidden";
        registerButton.style.visibility = "hidden";
        logoutButton.style.visibility = "visible";
    }
}
