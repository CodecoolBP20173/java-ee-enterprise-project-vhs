package com.vhs.videostore.model;

import javax.persistence.*;

@Entity
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private User user;

    @ManyToOne
    private Cassette cassette;

    private long from; //We convert Date-s to long timestamp milliseconds

    private long to; //Same here


    public Rental() {}

    public Rental(User who, Cassette cassette, long from, long to) {
        this.user = who;
        this.cassette = cassette;
        this.from = from;
        this.to = to;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cassette getCassette() {
        return cassette;
    }

    public void setCassette(Cassette cassette) {
        this.cassette = cassette;
    }

    public long getFrom() {
        return from;
    }

    public void setFrom(long from) {
        this.from = from;
    }

    public long getTo() {
        return to;
    }

    public void setTo(long to) {
        this.to = to;
    }
}
