package com.mkpp.bookstore.service;

import com.mkpp.bookstore.exception.BookNotFoundException;
import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Image;
import com.mkpp.bookstore.repository.BookRepository;
import com.mkpp.bookstore.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import java.util.*;

@Service("bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository bookRepository;
    @Autowired
    private ImageRepository imageRepository;

    @Override
    public Model getBookImageModel(Model model, List<Book> bookList, String name) {
        List<Image> imageList = new ArrayList<>();
        for (Book b : bookList) {
            System.out.println(b.toString());
            imageList.add(getImageById(b));
        }
        model.addAttribute("bookList" + name, bookList);
        model.addAttribute("imageList" + name, imageList);
        return model;
    }

    public Image getImageById(Book book) {
        Image image = imageRepository.getOne(book.getImageId());
        return image;
    }

    public int randomizeInt(int size) {
        return new Random().nextInt(size);
    }


    @Override
    public Optional<Book> findBookById(long id) {
        return bookRepository.findById(id);
    }


    @Override
    public List<Book> findAllRecommended() {
        Optional<List<Book>> bookListRecommended = bookRepository.findAllRecommended();
        Optional.ofNullable(bookListRecommended.orElseThrow(() -> new BookNotFoundException()));
        return bookListRecommended.get();
    }

    @Override
    public List<Book> findAllOnPromotion() {
        Optional<List<Book>> bookListOnPromotion = bookRepository.findAllOnPromotion();
        Optional.ofNullable(bookListOnPromotion.orElseThrow(() -> new BookNotFoundException()));
        return bookListOnPromotion.get();
    }

    @Override
    public List<Book> findAllPopular() {
        Optional<List<Book>> bookListPopular = bookRepository.findAllPopular();
        Optional.ofNullable(bookListPopular.orElseThrow(() -> new BookNotFoundException()));
        return bookListPopular.get();
    }

    @Override
    public List<Book> findSixOnPromotion() {
        Optional<List<Book>> bookListOnPromotion = bookRepository.findAllOnPromotion();
        
        List<Book> bookList = new ArrayList<>();
        for (int i = 0; i < 6; i++) {
            int randomInt = randomizeInt(bookListOnPromotion.get().size());
            Book book = bookListOnPromotion.get().get(randomInt);
            bookList.add(book);
            bookListOnPromotion.get().remove(randomInt);
        }
        return bookList;
    }
    @Override
    public List<Book> findThreeRecommended() {
        Optional<List<Book>> bookListRecommended = bookRepository.findAllRecommended();
        List<Book> bookList = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            int randomInt = randomizeInt(bookListRecommended.get().size());
            Book book = bookListRecommended.get().get(randomInt);
            bookList.add(book);
            bookListRecommended.get().remove(randomInt);
        }
        return bookList;
    }

//    @Override
//    public Page<Book> findAllSearchByCategory(String param, Pageable pageable) {
//        Page<Book> bookListByCategory = bookRepository.findAllSearch(param, pageable);
//        return bookListByCategory;
//    }
//    @Override
//    public Page<Book> findAll(Pageable pageable) {
//        Page<Book> bookList = bookRepository.findAll(pageable);
//        return bookList;
//    }

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

    @Override
    public void saveBook(Book book) {
        bookRepository.save(book);
    }
}
