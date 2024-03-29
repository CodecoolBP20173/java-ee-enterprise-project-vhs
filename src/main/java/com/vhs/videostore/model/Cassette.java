package com.vhs.videostore.model;

import java.beans.Transient;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;


@Entity
@Table(name = "cassettes")
public class Cassette {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany(mappedBy = "cassettes", cascade = CascadeType.ALL)
    private List<Rental> rentals = new ArrayList<>();

    private boolean isRented;

    private Date purchaseDate;

    private Integer age;

    @ManyToOne
    private Movie movie;


    public boolean isRented() {
        return isRented;
    }

    public void setRented(boolean rented) {
        isRented = rented;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}
