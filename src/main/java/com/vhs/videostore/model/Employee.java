package com.vhs.videostore.model;

import javax.persistence.*;

@Entity
@Table(name = "employees")
public class Employee {

    public Employee(){}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Enumerated(EnumType.STRING)
    private accessLevel accessRight;
    private String userId;
    private int salary;

    enum accessLevel {
        VISITOR, USER, MODERATOR, ADMIN;
    }

    public Employee(accessLevel accessRight, String userId, int salary) {
        this.accessRight = accessRight;
        this.salary = salary;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public accessLevel getAccessRight() {
        return accessRight;
    }

    public void setAccessRight(accessLevel accessRight) {
        this.accessRight = accessRight;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
