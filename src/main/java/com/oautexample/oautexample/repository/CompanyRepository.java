package com.oautexample.oautexample.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.oautexample.oautexample.model.Company;

@Repository
public interface CompanyRepository extends CrudRepository<Company, Long>{

}
