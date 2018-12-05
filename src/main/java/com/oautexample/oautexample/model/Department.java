package com.oautexample.oautexample.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.Data;

@Data
@Entity
public class Department {
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	private Boolean enabled;
	
	@Column
	private String name;
	
	@Column 
	private Long idCompany;
	
	@OneToMany( cascade=CascadeType.ALL)
	@JoinColumn(name="idDepartment")
	List<Employee> employees;
}
