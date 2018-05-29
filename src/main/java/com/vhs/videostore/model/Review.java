package com.vhs.videostore.model;

import javax.persistence.*;

@Entity
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private User owner;

    private String reviewText;

    private long timestamp;

    private int rating;

    private boolean moderated;


    public Review() {}

    public Review(User owner, String text, int rating) {
        this.owner = owner;
        this.reviewText = text;
        this.timestamp = System.currentTimeMillis();
        this.rating = rating;
        this.moderated = false;
    }

    public Review(User owner, int rating) {
        this(owner, "", rating);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public boolean isModerated() {
        return moderated;
    }

    public void setModerated(boolean moderated) {
        this.moderated = moderated;
    }
}
