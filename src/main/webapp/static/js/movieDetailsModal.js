//$(".btn-movie-details").click(function (clicked_button) {
$(".btn-primary").click(function (clicked_button) {
    //var movieId = clicked_button.target.getAttribute('id').substring(5);
    var Id = 1;
    //var url = "/movie/?id=" + clicked_button_id;
    $.ajax({
        type: 'POST',
        url: '/movie-details',
        data: {'movieId': Id },
        success: function (data) {
            //showMovieDetails(data),
            console.log(data);
            $('#movie_details_modal').append('<div>' + data.title +'</div>');
            $('#movie_details_modal').append('<div>' + data.releaseDate +'</div>');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("jqXHR : " + jqXHR + " text status : " + textStatus + " error : " + errorThrown);
        }
    })
});

function showMovieDetails(data) {
    $('#movie_details_modal').append('<div>' + data.title +'</div>');
    $('#movie_details_modal').append('<div>' + data.releaseDate +'</div>');
    //$('#movie-details-modal').append('<div>' + data[description] +'</div>')

}