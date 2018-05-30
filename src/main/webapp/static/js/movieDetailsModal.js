//$(".btn-movie-details").click(function (clicked_button) {
$(".btn-primary").click(function (clicked_button) {
    //var movieId = clicked_button.target.getAttribute('id').substring(5);
    var  movieId = 1;
    //var url = "/movie/?id=" + clicked_button_id;
    $.ajax({
        url: '/movie-details',
        type: "POST",
        data: { movieId: movieId} ,
        contentType: 'application/json',
        success: function (data) {
            showMovieDetails(data)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("jqXHR : " + jqXHR + " text status : " + textStatus + " error : " + errorThrown);
        }
    });
});

function showMovieDetails(data) {
    $('#movie-details-modal').append('<div>' + data[title] +'</div>')
    $('#movie-details-modal').append('<div>' + data[releaseDate] +'</div>')
    //$('#movie-details-modal').append('<div>' + data[description] +'</div>')

}