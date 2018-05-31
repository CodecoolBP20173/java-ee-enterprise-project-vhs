function populateModal(id) {
        $.ajax({
            type: 'POST',
            url: '/movie-details',
            data: {'movieId': id},
            success: function (data) {
                console.log(data);
                showMovieDetails(data)
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
        '<img' + ' src="static/img/movie' + data.id + '.jpg"' + 'width="120px" >');
    $("#exampleModal").modal("show");
}

