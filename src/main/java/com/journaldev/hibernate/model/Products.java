package com.journaldev.hibernate.model;

import javax.persistence.*;

/**
 * Created by dev- on 8/14/16.
 */
@Entity
@Table(name="products")
public class Products {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private  int id;
    @Column(name="subcat_id")
    private int subcat_id;


    @Column(name="name")
    private String name;

    @Column(name = "image")
    private  String image;

    @Column(name="price")
    private  int price;

    public int getId(){ return this.id;}
//    public int getSubcat_id(){return this.subcat_id;}
public String getName(){return  this.name;}
    public String getImage(){return  this.image;}
    public int getPrice(){return this.price;}

    public void setId(int id){this.id = id;}
    public void setName(String name){this.name = name;}
    public void setImage(String image){this.image = image;}
    public void setPrice(int price ){this.price = price;}
    public void setSubcat_id(int subcat_id ){this.subcat_id = subcat_id;}

}
