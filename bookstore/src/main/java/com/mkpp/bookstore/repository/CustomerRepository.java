package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Long> {
}
