package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.model.Purchase;
import org.springframework.data.repository.CrudRepository;

public interface PurchaseRepository extends CrudRepository<Purchase, Long> {
}
