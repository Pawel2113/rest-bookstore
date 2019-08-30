package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("roleRepository")
public interface RoleRepository extends CrudRepository<Role, Integer> {
	
	public Role findByRole(String role);

}
