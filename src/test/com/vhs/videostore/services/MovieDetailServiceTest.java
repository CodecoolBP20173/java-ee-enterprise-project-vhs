package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.repository.MovieRepository;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.*;

@RunWith(SpringRunner.class)
public class MovieDetailServiceTest {

    @MockBean
    private MovieRepository movieRepository;
    // TODO It was an @Autowired dependency before the test, had to change it because I've searched for the answer how to mock it
    // TODO and there was no working solution.... I was trying with @Spy @InjectMocks @Mock MockAnnotations.init(this), etc

    private List<Movie> expectedMovies = new ArrayList<>();
    private Movie editable;

    private MovieDetailService movieDetailService;



    @Before
    public void init() {
        Movie sampleMovie1 = new Movie();
        Movie sampleMovie2 = new Movie();
        Movie editableMovie = new Movie();
        sampleMovie1.setTitle("Sample 1");
        sampleMovie2.setTitle("Sample 2");

        List<Movie> movies = new ArrayList<>();
        movies.add(sampleMovie1);
        movies.add(sampleMovie2);

        this.expectedMovies = movies;
        this.editable = editableMovie;

        Optional<Movie> optionalMovie = Optional.of(sampleMovie1);

        when(movieRepository.findAll()).thenReturn(movies);
        when(movieRepository.findById(anyInt())).thenReturn(optionalMovie);
        when(movieRepository.getOne(anyInt())).thenReturn(editableMovie);
        doNothing().when(movieRepository).deleteAll();
        when(movieRepository.save(any(Movie.class))).thenReturn(sampleMovie1);
        doNothing().when(movieRepository).delete(any(Movie.class));


        movieDetailService = new MovieDetailService(movieRepository);
    }

    @Test
    public void test_GivenCalledFindAll_ShouldReturnListOfMovies() {
        List<Movie> result = movieDetailService.findAll();
        assertEquals(expectedMovies, result);
    }

    @Test
    public void test_GivenCalledFindById_ShouldReturnAMovie() {
        Optional<Movie> result = movieDetailService.findById(77);
        assertEquals(expectedMovies.get(0), result.get());
    }

    @Test
    public void test_DeleteAll() {
        movieDetailService.deleteAll();
        verify(movieRepository, atLeastOnce()).deleteAll();
    }

    @Test
    public void test_GivenCalledSaveMovie_ShouldSaveMovie() {
        movieDetailService.saveMOvie(new Movie());
        verify(movieRepository, atLeastOnce()).save(any(Movie.class));
    }

    @Test
    public void test_GivenCalledUpdateMovie_ShouldUpdateMovieTitle() {
        String newTitle = "Editable edited";
        movieDetailService.updateMovie(77, newTitle);
        verify(movieRepository, atLeastOnce()).save(any(Movie.class));
        assertEquals(newTitle, editable.getTitle());
    }

    @Ignore
    @Test
    public void test_GivenCalledDeleteById_ShouldDeleteMovie() {
        movieDetailService.deleteById(77);
        verify(movieRepository, atLeastOnce()).delete(new Movie());
    }

    @Test
    public void contextLoads() {

    }
}