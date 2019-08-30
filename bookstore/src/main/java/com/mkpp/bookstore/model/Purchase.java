package com.mkpp.bookstore.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "purchase")
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToOne
    @JoinColumn(name="BOOK_ID")
    private Book book;

    @OneToOne
    @JoinColumn(name="CUSTOMER_ID")
    private Customer customer;

    private Date dateOfPurchase;

    public long getId() {
        return id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Date getDateOfPurchase() {
        return dateOfPurchase;
    }

    public void setDateOfPurchase(Date dateOfPurchase) {
        this.dateOfPurchase = dateOfPurchase;
    }

    public Purchase() {}

    public Purchase(Book book, Customer customer, Date dateOfpurchase) {
        this.book = book;
        this.customer = customer;
        this.dateOfPurchase = dateOfpurchase;
    }
}


