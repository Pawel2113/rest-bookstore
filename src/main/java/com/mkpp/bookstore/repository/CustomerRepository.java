package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("customerRepository")
public interface CustomerRepository extends CrudRepository<Customer, Long> {

    public Customer findByEmail(String email);

}
