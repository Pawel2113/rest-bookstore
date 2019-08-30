package com.mkpp.bookstore.service;

import com.mkpp.bookstore.model.Customer;

public interface CustomerService {

    public Customer findUserByEmail(String email);
    public void saveCustomer(Customer customer);
    public void updateUserPassword(String newPassword, String email);
    public void updateUserProfile(String newName, String newLastName, String newEmail, int id);
    public void updateUserActivation(int activeCode, String activationCode);
}
