function populateModal(id) {
        $.ajax({
            type: 'POST',
            url: '/movie-details',
            data: {'movieId': id},
            success: function (data) {
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
        '<div>' +
            '<div id="modal-movie-picture">' +
                // '<img' + ' src=' + 'width="120px" id="modal-movie-picture">' +
            '</div>' +
            '<div id="modal-movie-data">' +
                '<div>' + data.title + '</div>' +
                '<div>' + data.releaseDate + '</div>' +
            '</div>' +
        '<div id="modal-movie-description">' + ((data.description === null)? "No description provided" : data.description) + '</div>' +
        '</div>');

    document.getElementById("modal-movie-picture").style.backgroundImage = 'url(static/img/movie' + data.id + '.jpg)';

    $("#exampleModal").modal("show");
}

