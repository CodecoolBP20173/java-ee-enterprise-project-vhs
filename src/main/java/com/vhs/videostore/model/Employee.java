package main.java.com.vhs.videostore.model;

import com.vhs.videostore.model.User;

import javax.persistence.*;

@Entity
@Table(name = "Employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Enumerated(EnumType.STRING)
    private accessLevel accessRight;
    @OneToOne
    private User user;
    private int salary;

    enum accessLevel {
        VISITOR, USER, MODERATOR, ADMIN;
    }

    public Employee(accessLevel accessRight, User user, int salary) {
        this.accessRight = accessRight;
        this.user = user;
        this.salary = salary;
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
