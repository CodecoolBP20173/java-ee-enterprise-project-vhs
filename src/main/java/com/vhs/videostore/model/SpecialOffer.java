package com.vhs.videostore.model;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "special_offers")
public class SpecialOffer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Transient
    private Integer daysLeft;


    private float specialPrice;

    @OneToOne
    private Movie movie;

    private Date fromDate;

    private Date toDate;

    public SpecialOffer(float specialPrice, Movie movie, Date fromDate, Date toDate) {
        this.specialPrice = specialPrice;
        this.movie = movie;
        this.fromDate = fromDate;
        this.toDate = toDate;
    }

    public SpecialOffer() {
    }

    public Long getId() {
        return id;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Date getFrom() {
        return fromDate;
    }

    public void setFrom(Date fromDate) {
        this.fromDate = fromDate;
    }

    public Date getTo() {
        return toDate;
    }

    public void setTo(Date toDate) {
        this.toDate = toDate;
    }

    public Integer getDaysLeft() {
        return daysLeft;
    }

    public float getSpecialPrice() {
        return specialPrice;
    }

    public void setSpecialPrice(float specialPrice) {
        this.specialPrice = specialPrice;
    }
}
