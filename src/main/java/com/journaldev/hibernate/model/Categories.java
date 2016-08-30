package com.journaldev.hibernate.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="categories")
public class Categories {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private long id;




    @Column(name="name")
    private String name;


    @OneToMany(mappedBy="categories")
    private Set<Subcategories> subcategories;


    //Hibernate requires no-args constructor

    public Categories(){	}

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

    public Set<Subcategories> getSubcategories() {
        return subcategories;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }

    public void setSubcategories(Set<Subcategories> subcategories) {
        this.subcategories = subcategories;
    }
}
