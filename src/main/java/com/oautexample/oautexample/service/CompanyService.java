package com.oautexample.oautexample.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import com.oautexample.oautexample.model.Company;
import com.oautexample.oautexample.repository.CompanyRepository;

@Service
@Transactional
public class CompanyService {
	
	@Autowired
	private CompanyRepository companyRepository;
	
    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
	public List<Company> findAll(){
		return (List<Company>) companyRepository.findAll();
	}

    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
	public Company findById(Long id) {
		return companyRepository.findById(id).get();
	}
	
}
