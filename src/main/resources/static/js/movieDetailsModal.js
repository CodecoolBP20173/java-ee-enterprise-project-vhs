$("#movieModal").on("hidden.bs.modal", function () {
    $('#modal-movie-content').html("");
});
$("#loginModal").on("hidden.bs.modal", function () {
    $('#modal-login-message').html("");
});


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

function showMovieDetails(data) {
    $('#modal-movie-content').append(
        '<div>' +
        '<div id="modal-movie-picture">' +
        // '<img' + ' src=' + 'width="120px" id="modal-movie-picture">' +
        '</div>' +
        '<div id="modal-movie-data">' +
        '<div>' + data.title + '</div>' +
        '<div>' + data.releaseDate + '</div>' +
        '</div>' +
        '<div id="modal-movie-description">' + ((data.description === null) ? "No description provided" : data.description) + '</div>' +
        '<button type="button" class="btn btn-info rent" id="btn-rent-movie" data-movie-id="' + data.id + '">Rent</button> ' +
        '</div>'
    );

    document.getElementById("modal-movie-picture").style.backgroundImage = 'url(/img/movie' + data.id + '.jpg)';

    $('#btn-rent-movie').on('click', function () {
        let movie_id = $(this).data("movie-id");
        $('#movieModal').modal('hide');
        evalRentAction(movie_id);
    });

    $("#movieModal").modal("show");

}

function evalRentAction(movieId) {
    $.ajax({
        type: 'POST',
        url: '/logged-in-user-id',
        success: function (userId) {
            if (userId === 1) {
                $('#modal-login-message').html("In order to make a rent please log in or register!");
                window.location.href = "http://localhost:8080/login";
            } else {
                $.ajax({
                    type: 'POST',
                    url: '/rent-movie',
                    data: {'userId': userId, 'movieId': movieId},
                    success: function () {
                        console.log("Renting action was successful.");
                    }
                })
            }
        }
    })

}



