package com.oautexample.oautexample.controller;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.oautexample.oautexample.model.Company;
import com.oautexample.oautexample.service.CompanyService;
import com.oautexample.oautexample.util.URL;


@RestController
@RequestMapping(URL.INTERNAL_COMPANY)
public class CompanyController {
	
	private Logger LOG = Logger.getLogger(CompanyController.class);
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Company> findAll(){
		//===============================
		LOG.info("Company. Get all.");
		//===============================
		List<Company> companies = companyService.findAll();
		LOG.info(companies);
		return companies;
	}
	
	@RequestMapping(value=URL.PATH_VARIABLE_ID, method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Company find(@PathVariable Long id){
		//===============================
		LOG.info("Company. Get by id =" + id);
		//===============================
		Company company = companyService.findById(id);
		LOG.info(company.getId());
		return companyService.findById(id);
	}
	
}
