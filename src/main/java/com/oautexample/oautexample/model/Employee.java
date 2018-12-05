package com.oautexample.oautexample.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="employee")
public class Employee {
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	private Boolean enabled;
	
	@Column
	private String name;
	
	@Column(name="last_name")
	private String lastname;
	
	private Long idDepartment;
	
	@OneToOne
	@JoinColumn( name="address", referencedColumnName="id")
	private Address address;
}
