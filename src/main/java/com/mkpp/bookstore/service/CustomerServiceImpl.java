package com.mkpp.bookstore.service;


import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.model.Role;
import com.mkpp.bookstore.repository.CustomerRepository;
import com.mkpp.bookstore.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.HashSet;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Customer findUserByEmail(String email) {
        return customerRepository.findByEmail(email);
    }

    @Override
    public void saveCustomer(Customer customer) {

//        customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));
//        customer.setActive(0);
        Role role = roleRepository.findByRole("ROLE_USER");
        customer.setRoles(new HashSet<Role>(Arrays.asList(role)));
        customerRepository.save(customer);
    }

    @Override
    public void updateUserPassword(String newPassword, String email) {

    }

    @Override
    public void updateUserProfile(String newName, String newLastName, String newEmail, int id) {

    }

    @Override
    public void updateUserActivation(int activeCode, String activationCode) {

    }
}
