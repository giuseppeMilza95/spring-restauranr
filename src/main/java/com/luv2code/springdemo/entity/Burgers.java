package com.luv2code.springdemo.entity;


import javax.persistence.*;

@Entity
public class Burgers {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int Id;
    @Column(name="price")
    private double price;
    @Column(name="name")
    private String name;
    @Column(name="description")
    private String description;


    public Burgers(double price, String name, String description) {
        this.price = price;
        this.name = name;
        this.description = description;
    }

    public Burgers() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
