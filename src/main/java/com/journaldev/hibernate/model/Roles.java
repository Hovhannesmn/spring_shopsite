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
@Table(name="roles")
public class Roles {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private long id;




	@Column(name="name")
	private String name;
	
	@ManyToOne
	@JoinColumn(name="user_id", nullable=false)
	private Users users;
	
	//Hibernate requires no-args constructor
	public Roles(String name, Users users){
		setName(name);
		setUsers(users);
	}
	public Roles(){	}
	
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

	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
}
