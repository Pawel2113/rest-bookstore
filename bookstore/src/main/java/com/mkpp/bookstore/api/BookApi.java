package com.mkpp.bookstore.api;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.model.Purchase;
import com.mkpp.bookstore.repository.BookRepository;
import com.mkpp.bookstore.repository.CustomerRepository;
import com.mkpp.bookstore.repository.PurchaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class BookApi {

    @Autowired
    BookRepository bookRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    PurchaseRepository purchaseRepository;

    @PostConstruct
    private void createDb() {
        Book book1 = new Book("Tytyl1", "Autor1", "Wydawnictwo1", 2019, 35.99);
        Book book2 = new Book("Tytyl2", "Autor2", "Wydawnictwo2", 2019, 29.99);
        book1 = bookRepository.save(book1);
        book2 = bookRepository.save(book2);

        Customer customer1 = new Customer("Adam", "Adamowski", "adamowski@adam.com");
        Customer customer2 = new Customer("Adolf", "Adolfowski", "adolfowski@adolf.com");
        customer1 = customerRepository.save(customer1);
        customer2 = customerRepository.save(customer2);

        Purchase purchase1 = new Purchase(book1, customer1, new Date());
        Purchase purchase2 = new Purchase(book2, customer2, new Date());
        purchaseRepository.save(purchase1);
        purchaseRepository.save(purchase2);

    }

    @GetMapping(path="/books")
    public List<Book> getBooks() {

        ArrayList<Book> books = new ArrayList<>();
        bookRepository.findAll().iterator().forEachRemaining(books::add);
        return books;
    }

    @GetMapping(path="/customers")
    public List<Customer> getCustomers() {

        ArrayList<Customer> customers = new ArrayList<>();
        customerRepository.findAll().iterator().forEachRemaining(customers::add);
        return customers;
    }

    @GetMapping(path="/purchases")
    public List<Purchase> getPurchases() {

        ArrayList<Purchase> purchases = new ArrayList<>();
        purchaseRepository.findAll().iterator().forEachRemaining(purchases::add);
        return purchases;
    }

}
