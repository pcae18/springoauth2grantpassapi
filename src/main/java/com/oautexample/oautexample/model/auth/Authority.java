package com.oautexample.oautexample.model.auth;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table( name="AUTHORITY")
public class Authority{
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String authority;
}
