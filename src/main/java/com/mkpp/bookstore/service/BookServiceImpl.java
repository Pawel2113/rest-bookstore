package com.mkpp.bookstore.service;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.util.List;
import java.util.Random;

@Service("bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository bookRepository;

    @Override
    public ModelMap showBook(ModelMap modelMap) {

        Random rand = new Random();
        int sizeOfRecommended = findAllRecommended().size();
        modelMap.put("book", findAllRecommended().get(rand.nextInt(sizeOfRecommended)));
        modelMap.put("book2", findAllRecommended().get(rand.nextInt(sizeOfRecommended)));
        int sizeOfOnPromotion = findAllOnPromotion().size();
        modelMap.put("book3", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        modelMap.put("book4", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        modelMap.put("book5", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        modelMap.put("book6", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        modelMap.put("book7", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        modelMap.put("book8", findAllOnPromotion().get(rand.nextInt(sizeOfOnPromotion)));
        int sizeOfPopular = findAllPopular().size();
        modelMap.put("book9", findAllPopular().get(rand.nextInt(sizeOfPopular)));
        modelMap.put("book10", findAllPopular().get(rand.nextInt(sizeOfPopular)));
        modelMap.put("book11", findAllPopular().get(rand.nextInt(sizeOfPopular)));

            return modelMap;
        }

    @Override
    public Page<Book> findAll(Pageable pageable) {
        Page<Book> bookList = bookRepository.findAll(pageable);
        return bookList;
    }

    @Override
    public Book findBookById(long id) {
        return bookRepository.findById(id);
    }


    @Override
    public List<Book> findAllRecommended() {
        List<Book> bookListRecommended = bookRepository.findAllRecommended();
        return bookListRecommended;
    }

    @Override
    public List<Book> findAllOnPromotion() {
        List<Book> bookListOnPromotion = bookRepository.findAllOnPromotion();
        return bookListOnPromotion;
    }

    @Override
    public List<Book> findAllPopular() {
        List<Book> bookListPopular = bookRepository.findAllPopular();
        return bookListPopular;
    }

    @Override
    public Page<Book> findAllSearchByCategory(String param, Pageable pageable) {
        Page<Book> bookListByCategory = bookRepository.findAllSearch(param, pageable);
        return bookListByCategory;
    }

    @Override
    public List<String> findAllPublishingHouse() {
        List<String> publishingHouse = bookRepository.findAllPublishingHouse();
        return publishingHouse;
    }

    @Override
    public String categoryName(String param) {
        String categoryName = bookRepository.categoryName(param);
        return categoryName;
    }

    @Override
    public Book findBookByUrl(String param) {
        Book bookUrl = bookRepository.bookUrl(param);
        return bookUrl;
    }
}
