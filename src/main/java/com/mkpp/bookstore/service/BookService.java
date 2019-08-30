package com.mkpp.bookstore.service;

import com.mkpp.bookstore.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.ui.ModelMap;

import java.util.List;

public interface BookService {

    public ModelMap showBook(ModelMap modelMap);
    public Page<Book> findAll(Pageable pageable);
    public Book findBookById (long id);
    public List<Book> findAllRecommended();
    public List<Book> findAllOnPromotion();
    public List<Book> findAllPopular();
    public Page<Book> findAllSearchByCategory(String param, Pageable pageable);
    public List<String> findAllPublishingHouse();
    public String categoryName(String param);
    public Book findBookByUrl(String param);

}
