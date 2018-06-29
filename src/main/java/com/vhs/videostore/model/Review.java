package com.vhs.videostore.model;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String userId;

    @ManyToOne
    private Movie movie;

    private String reviewText;
    private long timestamp;
    private int rating;
    private boolean moderated;


    public Review() {}

    public Review(String userId, String text, int rating) {
        this.userId = userId;
        this.reviewText = text;
        this.timestamp = System.currentTimeMillis();
        this.rating = rating;
        this.moderated = false;
    }

    public Review(String userId, int rating) {
        this(userId, "", rating);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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
