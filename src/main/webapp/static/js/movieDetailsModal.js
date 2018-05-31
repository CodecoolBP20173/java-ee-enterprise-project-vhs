//$(".btn-movie-details").click(function (clicked_button) {
function populateModal(id) {
        //var movieId = clicked_button.target.getAttribute('id').substring(5);
        $.ajax({
            type: 'POST',
            url: '/movie-details',
            data: {'movieId': id},
            success: function (data) {
                //showMovieDetails(data),
                console.log(data);
                showMovieDetails(data)
                /*$('#movie_details_modal').append('<div>' + data.title +'</div>');
                $('#movie_details_modal').append('<div>' + data.releaseDate +'</div>');*/
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("jqXHR : " + jqXHR + " text status : " + textStatus + " error : " + errorThrown);
            }
        });
}

$("#exampleModal").on("hidden.bs.modal", function () {
    $('#modal-content').html("");
});

function showMovieDetails(data) {
    $('#modal-content').append(
        '<div><h4>' + data.title + '</h4></div>' +
        '<div>' + data.releaseDate + '</div>' +
        '<div>' + data.description + '</div>' +
        '<img' + ' src="static/img/movie' + data.id + '.jpg"' + 'width="60px" >');
    $("#exampleModal").modal("show");
}

