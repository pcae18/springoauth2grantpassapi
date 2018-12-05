package com.oautexample.oautexample.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oautexample.oautexample.model.auth.Authority;
import com.oautexample.oautexample.model.auth.User;
import com.oautexample.oautexample.repository.UserRepository;

@Service
public class UserDetailServiceImpl implements UserDetailsService{
	
	@Autowired
	private UserRepository userRespository;
	
	@Override
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRespository.findByUsername(username);
		
		if(user!=null) {
			List<GrantedAuthority> authorities =
					buildUserAuthority(user.getAuthorities());
			
			return buildUserForAuthentification(user, authorities);
		}
		
		throw new UsernameNotFoundException(username);
	}

	private UserDetails buildUserForAuthentification(User user, List<GrantedAuthority> authorities) {
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), user.getEnabled(), true, true, true, authorities);
	}

	private List<GrantedAuthority> buildUserAuthority(List<Authority> authorities) {
		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
		for(Authority authority : authorities) {
			setAuths.add(new SimpleGrantedAuthority(authority.getAuthority()));
		}
		return new ArrayList<GrantedAuthority>(setAuths);
	}

}
