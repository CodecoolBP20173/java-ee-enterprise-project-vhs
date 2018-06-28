package java.com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.SpecialOffer;
import com.vhs.videostore.repository.MovieRepository;
import com.vhs.videostore.repository.SpecialOfferRepository;
import com.vhs.videostore.services.MainPageService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(SpringRunner.class)
public class MainPageServiceTest {

    @MockBean
    MovieRepository movieRepository;

    @MockBean
    SpecialOfferRepository specialOfferRepository;

    private MainPageService mainPageService;

    @Before
    public void init() {
        when(movieRepository.findAll()).thenReturn(new ArrayList<>());
        when(specialOfferRepository.findAll()).thenReturn(new ArrayList<>());
        mainPageService = new MainPageService(movieRepository, specialOfferRepository);
    }

    @Test
    public void test_GettingAllMovies_ShouldReturnListOfMovies() {
        List<Movie> result = mainPageService.getAllMovies();
        assertEquals(new ArrayList<Movie>(), result);
    }

    @Test
    public void test_GettingAllSpecialOffers_ShouldReturnListOfSpecialOffers() {
        List<SpecialOffer> result = specialOfferRepository.findAll();
        assertEquals(new ArrayList<SpecialOffer>(), result);
    }

    @Test
    public void contextLoads() {
    }

}