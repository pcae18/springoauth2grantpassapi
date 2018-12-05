package com.oautexample.oautexample.model.auth;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table( name="USER_")
public class User{
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String username;
	
	private String password;
	
	private Boolean enabled;
	
	@ManyToMany(cascade= {CascadeType.ALL})
	@JoinTable(
			name="USERS_AUTHORITIES",
			joinColumns= {@JoinColumn(name="user_id", referencedColumnName="id")},
			inverseJoinColumns= {@JoinColumn(name="authority_id", referencedColumnName="id")}
			)
	List<Authority> authorities;
	
}
