package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository("customerRepository")
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    public Optional<Customer> findByEmail(String email);

}
