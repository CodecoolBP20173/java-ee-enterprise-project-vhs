package com.vhs.videostore.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private User user;

    @ManyToMany
    private List<Cassette> cassettes;

    private long from; //We convert Date-s to long timestamp milliseconds

    private long to; //Same here


    public Rental() {}

    public Rental(User who, Cassette cassette, long from, long to) {
        this.user = who;
        this.cassettes.add(cassette);
        this.from = from;
        this.to = to;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Cassette> getCassette() {
        return cassettes;
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
