package com.journaldev.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="subcategories")
public class Subcategories {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private long id;




    @Column(name="name")
    private String name;
//
    @ManyToOne
    @JoinColumn(name="category_id", nullable=false)
    private Categories categories;

    //Hibernate requires no-args constructor
    public Subcategories(String name, Users users){
        setName(name);
//        setCategories(categories);
    }
    public Subcategories(){	}

//	public Items1(String itemId, double total, int qty, Cart1 c){
//		this.itemId=itemId;
//		this.itemTotal=total;
//		this.quantity=qty;
////		this.cart1=c;
//	}

    public String getName(){
        return this.name;
    }

    public void setName(String name){
        this.name = name;
    }

    public Categories getCategories() {
        return categories;
    }
    public void setCategories(Categories categories) {
        this.categories = categories;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }

}
