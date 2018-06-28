package com.vhs.videostore.services;

import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import com.vhs.videostore.repository.CassetteRepository;
import com.vhs.videostore.repository.MovieRepository;
import com.vhs.videostore.repository.RentalRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@RunWith(SpringRunner.class)
public class RentalServiceTest {

    @MockBean
    private RentalRepository rentalRepository;
    @MockBean
    private MovieRepository movieRepository;
    @MockBean
    private CassetteRepository cassetteRepository;

    private RentalService service;

    @Test
    public void TestAddingRentalCallsSave(){
        when(movieRepository.getOne(1)).thenReturn(new Movie());
        when(cassetteRepository.findByMovie(null)).thenReturn(new Cassette());
        when(rentalRepository.save(new Rental())).thenReturn(new Rental());

        service = new RentalService(rentalRepository, movieRepository, cassetteRepository);
        service.add("user", 5);

        verify(rentalRepository, atLeastOnce()).save(any(Rental.class));
    }

    @Test
    public void TestfindRentalsByUserId(){
        when(rentalRepository.findRentalsByUserId("1")).thenReturn(new ArrayList<>());
        assertEquals(rentalRepository.findRentalsByUserId("1"), new ArrayList<Rental>());
    }

}