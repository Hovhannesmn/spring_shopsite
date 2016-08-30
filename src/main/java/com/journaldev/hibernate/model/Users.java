package com.journaldev.hibernate.model;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Controller
@Entity
@Table(name="users")
	public class Users {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@OneToMany(mappedBy="users")
	private Set<Roles> roles;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {

		return email;
	}
	public void  setEmail(String email){
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;

	}
	public String getPassword(){
		return this.password;

	}
	public Set<Roles> getRoles() {
		return roles;
	}
	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}
	
}
