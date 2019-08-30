package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    private BookService bookService;

    @GetMapping(value = {"/test"})
    public String showBooks(ModelMap modelMap) {
        int random = (int)(Math.random() * 5 + 1);
        modelMap.put("book", bookService.findBookById(random));
        int random2 = (int)(Math.random() * 5 + 1);
        modelMap.put("book2", bookService.findBookById(random2));
        int random3 = (int)(Math.random() * 5 + 1);
        modelMap.put("book3", bookService.findBookById(random3));
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
}
