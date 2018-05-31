$(document).ready(function () {
    let firstCarouselItem = $('.carousel-item:first');
    firstCarouselItem.addClass('active');
    $('#movies_list').DataTable();

    let searchBar = $('label:last');
    let toReplace = $('#searchReplace');
    toReplace.replaceWith(searchBar);


    document.getElementsByTagName("input")[0].addEventListener("click", function () {
        $('#jumbo').hide('slow');
    });



    let rows = document.getElementsByTagName("tr");
    for (let row of rows) {
        row.addEventListener("mouseover", function(e){
            row.style.backgroundColor = "#434a50";
            row.style.color = "#888888";
        });
        row.addEventListener("mouseout", function(e){
            row.style.backgroundColor = "#343a40";
            row.style.color = "white";
        });


        row.addEventListener("click", function (e) {
            $("#exampleModal").modal("show");
            e.preventDefault()
        })
    }
});
