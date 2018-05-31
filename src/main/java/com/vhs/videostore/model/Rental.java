package com.vhs.videostore.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private User user;

    @ManyToMany
    private List<Cassette> cassettes = new ArrayList<>();

    private long fromDate; //We convert Date-s to long timestamp milliseconds

    private long toDate; //Same here


    public Rental() {}

    public Rental(User who, Cassette cassette, long fromDate, long toDate) {
        this.user = who;
        this.cassettes.add(cassette);
        this.fromDate = fromDate;
        this.toDate = toDate;
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

    public void setCassettes(List<Cassette> cassettes) {
        this.cassettes = cassettes;
    }

    public long getFromDate() {
        return fromDate;
    }

    public void setFromDate(long from) {
        this.fromDate = from;
    }

    public long getToDate() {
        return toDate;
    }

    public void setToDate(long to) {
        this.toDate = to;
    }

    public void addCassette(Cassette cassette) {
        this.cassettes.add(cassette);
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
