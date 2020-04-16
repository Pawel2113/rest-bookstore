package com.mkpp.bookstore.service;


import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.model.Role;
import com.mkpp.bookstore.model.Token;
import com.mkpp.bookstore.repository.CustomerRepository;
import com.mkpp.bookstore.repository.RoleRepository;
import com.mkpp.bookstore.repository.TokenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Optional;
import java.util.UUID;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private TokenRepository tokenRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private MailService mailService;

    @Override
    public Customer findUserByEmail(String email) {
        return customerRepository.findByEmail(email).get();
    }

    @Override
    public boolean isCustomer(String email) {
        Optional<Customer> customer = customerRepository.findByEmail(email);
        return customer.isPresent();
    }

    @Override
    public void saveCustomer(Customer customer) {

        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customer.setEnabled(false);
        Role role = roleRepository.findByRole("ROLE_USER");
        customer.setRoles(new HashSet<Role>(Arrays.asList(role)));
        customer.setNrRole(1);
        customerRepository.save(customer);
        sendToken(customer);
    }

    @Override
    public void sendToken(Customer customer) {
        String tokenValue = UUID.randomUUID().toString();
        Token token = new Token();
        token.setValue(tokenValue);
        token.setCustomer(customer);
        tokenRepository.save(token);
        String url = "http://localhost:8080/token?value=" + tokenValue;

        try {
            mailService.sendMail(customer.getEmail(), "Potwierdź swojego maila", url, false);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
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
