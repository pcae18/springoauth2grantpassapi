package com.oautexample.oautexample.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Car {
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	private Boolean enabled;
	
	@Column(name="registration_number")
	private String registrationNumber;
	
	@Column 
	private Long idCompany;
}
