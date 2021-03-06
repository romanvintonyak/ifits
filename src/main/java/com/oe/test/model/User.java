package com.oe.test.model;


import org.hibernate.annotations.NaturalId;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users", uniqueConstraints = {@UniqueConstraint(columnNames = "username")})

public class User {

    @Id
    @Column(name = "user_id", updatable = false)
    @GeneratedValue
    private Integer id;

    @Column(name = "username", unique = true)
    @NotEmpty(message = "Заповніть поле!")
    @NaturalId(mutable = false)
    private String login;

    @Column(name = "email")
    @NotEmpty(message = "Заповніть поле!")
    @Email(message = "невірний емейл")
    private String email;

    @Column(name = "password")
    @NotEmpty(message = "Заповніть поле!")
    private String pass;

    @Column(name = "password2")
    @NotEmpty(message = "Заповніть поле!")
    private String pass2;

    @Column(name = "enabled")
    private Integer enabled = 1;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private Role role;

    @Column(name = "firstname")
    @NotEmpty(message = "Заповніть поле!")
    private String firstname;

    @Column(name = "lastname")
    @NotEmpty(message = "Заповніть поле!")
    private String lastname;

    @OneToMany(targetEntity = News.class, mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<News> news = new ArrayList<News>();

    @OneToMany(targetEntity = Event.class, mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Event> events = new ArrayList<Event>();

    public List<News> getNews() {
        return news;
    }

    public void setNews(List<News> news) {
        this.news = news;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

}
