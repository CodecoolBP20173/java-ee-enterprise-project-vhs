$(document).ready(function () {
    let firstCarouselItem = $('.carousel-item:first');
    firstCarouselItem.addClass('active');
    $('#movies_list').DataTable();

    let searchBar = $('label:last');
    let toReplace = $('#searchReplace');
    toReplace.replaceWith(searchBar);

    let searchInput = $('input:first');
    console.log(searchInput);
    // searchInput.onfocus = function (e) {
    //     let jumbotron = $('.jumbotron');
    //     jumbotron.hide();
    // };


    document.getElementsByTagName("input")[0].addEventListener("click", function () {
        $('#jumbo').hide('slow');
    });



    let rows = document.getElementsByTagName("tr");
    for (let row of rows) {
        row.addEventListener("click", function (e) {
            let currentId = row.getAttribute("id");

            sessionStorage.setItem("currentMovie", currentId);
            $("#exampleModal").modal("show");
            e.preventDefault()
        })
    }
});
