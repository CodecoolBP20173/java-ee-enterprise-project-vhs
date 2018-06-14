function populateModal(id) {
    $.ajax({
        type: 'POST',
        url: '/movie-detail',
        data: {'movieId': id},
        success: function (data) {
            showMovieDetails(data)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("jqXHR : " + jqXHR + " text status : " + textStatus + " error : " + errorThrown);
        }
    });
}

function evalRentAction(movieId){
    $.ajax({
        type: 'POST',
        url: '/logged-in-user-id',
        success: function (userId) {
            if (userId === "0"){
                console.log("crap");
                $('#accessDenied').modal('show');
            } else {
                $.ajax({
                    type: 'POST',
                    url: '/rent-movie',
                    data: {'userId': userId, 'movieId' : movieId},
                    success: function () {
                        console.log("Renting action was successful.");
                    }
                })
            }
        }
    })
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
            '<div id="modal-movie-description">' + ((data.description === null) ? "No description provided" : data.description) + '</div>' +
            '<button type="button" class="btn btn-info" id="btn-rent-movie" data-movie-id="' + data.id + '">Rent</button> ' +
        '</div>'
    );

    document.getElementById("modal-movie-picture").style.backgroundImage = 'url(static/img/movie' + data.id + '.jpg)';

    $('#btn-rent-movie').on('click', function () {
        let movie_id = $(this).data("movie-id");
        $('#exampleModal').modal('hide');
        evalRentAction(movie_id);
    });

    $("#exampleModal").modal("show");

}


