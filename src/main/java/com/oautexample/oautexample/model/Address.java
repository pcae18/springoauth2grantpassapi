package com.oautexample.oautexample.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="address")
public class Address {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private Boolean enabled;
	
	@Column(name="house_number")
	private String houseNumber;
	
	@Column(name="street")
	private String street;
	
	@Column(name="zip_code")
	private String zipCode;
}
