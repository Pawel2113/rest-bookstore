package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.exception.BookNotFoundException;
import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.model.Image;
import com.mkpp.bookstore.repository.BookRepository;
import com.mkpp.bookstore.repository.ImageRepository;
import com.mkpp.bookstore.service.BookService;
import com.mkpp.bookstore.service.ImageUploader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
public class BookController {

    @Autowired
    private ImageUploader imageUploader;
    @Autowired
    private BookService bookService;
    @Autowired
    private BookRepository bookRepository;

    @GetMapping(value = "/test")
    public String showBooks(ModelMap modelMap) {
        int random = (int)(Math.random() * 5 + 1);
        modelMap.put("book", bookService.findBookById(random).orElseThrow(() -> new BookNotFoundException()));
        int random2 = (int)(Math.random() * 5 + 1);
        modelMap.put("book2", bookService.findBookById(random2).orElseThrow(() -> new BookNotFoundException()));
        int random3 = (int)(Math.random() * 5 + 1);
        modelMap.put("book3", bookService.findBookById(random3).orElseThrow(() -> new BookNotFoundException()));
        return "test";
    }

    @GetMapping(value = "/book/{book}")
    public String showBook(@PathVariable("book") String book, ModelMap modelMap) {

        Book bookObj = getBookByUrl(book);
        System.out.println(bookObj.getTitle());
        modelMap.addAttribute("singleBook", bookObj);
        return "book";

    }

    private Book getBookByUrl(String param) {
        Book bookObj = bookService.findBookByUrl(param);
        return bookObj;
    }

    @GetMapping("/add-book-form")
    public String addBookForm(Model model) {
        Book book = new Book();
        model.addAttribute("image", new Image());
        model.addAttribute("book", book);
        return "add-book";
    }

    @PostMapping("/adding-book")
    public String addBook(Book book, Model model, String path) {
        Image image = imageUploader.addImage(path);
        book.setImageId(imageUploader.getImageByPath(image.getImageAddress()).getId());
        bookService.saveBook(book);
        model.addAttribute("book", book);
        return "add-book";
    }
}
