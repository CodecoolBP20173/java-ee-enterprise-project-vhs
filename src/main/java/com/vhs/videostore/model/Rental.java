package com.vhs.videostore.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String userId;

    @ManyToMany
    private List<Cassette> cassettes = new ArrayList<>();

    private long fromDate; //We convert Date-s to long timestamp milliseconds

    private long toDate; //Same here


    public Rental() {}

    public Rental(String userId, Cassette cassette, long fromDate, long toDate) {
        this.userId = userId;
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

    public String getUserId() {
        return userId;
    }

    public void setUser(String userId) {
        this.userId = userId;
    }
}
