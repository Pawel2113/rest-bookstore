package com.mkpp.bookstore.service;

import com.mkpp.bookstore.model.Book;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import java.util.List;
import java.util.Optional;

public interface BookService {

//    public ModelMap showBook(ModelMap modelMap);
//    public Page<Book> findAll(Pageable pageable);
    public Optional<Book> findBookById (long id);


    Model getBookImageModel(Model model, List<Book> bookList, String name);

    public List<Book> findAllRecommended();
    public List<Book> findAllOnPromotion();
    public List<Book> findAllPopular();

    List<Book> findSixOnPromotion();
    List<Book> findThreeRecommended();

    //    public Page<Book> findAllSearchByCategory(String param, Pageable pageable);
    public List<String> findAllPublishingHouse();
    public String categoryName(String param);
    public Book findBookByUrl(String param);
    public void saveBook(Book book);

}
