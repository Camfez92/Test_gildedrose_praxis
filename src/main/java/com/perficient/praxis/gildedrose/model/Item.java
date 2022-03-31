package com.perficient.praxis.gildedrose.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;


@Entity
@Table(name = "items")
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    public String name;

    public int sellIn;

    public int quality;



    public Item() {
    }

    public Item(int id, String name, int sellIn, int quality) {
        this.id = id;
        this.name = name;
        this.sellIn = sellIn;
        this.quality = quality;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void updateQuality(){}

    @Override
    public String toString() {
        return this.id+ ", " +this.name + ", " + this.sellIn;
    }
}
