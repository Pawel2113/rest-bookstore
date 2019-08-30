package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.model.Book;
import com.mkpp.bookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;


@Controller
public class CategoryController {

    private static int ELEMENTS = 15;

    @Autowired
    private BookService bookService;

    @Autowired
    private MessageSource messageSource;

    @GetMapping(value = "/category/{category}/{page}")
    public String showBooksByCategory(@PathVariable("category") String category, @PathVariable("page") int page, Model model, ModelMap modelMap,String param) {
        Page<Book> pages = getAllBooksPageable(page - 1, category);
        int totalPages = pages.getTotalPages();
        int currentPage = pages.getNumber();
        List<Book> bookList = pages.getContent();
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("currentPage", currentPage + 1);
        model.addAttribute("bookList", bookList);
        model.addAttribute("recordStartCounter", currentPage * ELEMENTS);
        List<String> publishingHouseList = bookService.findAllPublishingHouse();
        model.addAttribute("publishingHouseList", publishingHouseList);
        String categoryName = bookService.categoryName(param);
        modelMap.put("categoryName", categoryName);
        return "category";

//                Page<User> pages = getAllUsersPageable(page - 1, false, null);
//        int totalPages = pages.getTotalPages();
//        int currentPage = pages.getNumber();
//        List<User> userList = pages.getContent();
//        model.addAttribute("totalPages", totalPages);
//        model.addAttribute("currentPage", currentPage + 1);
//        model.addAttribute("userList", userList);
//        model.addAttribute("recordStartCounter", currentPage * ELEMENTS);
//        return "admin/users";
    }

    private Page<Book> getAllBooksPageable(int page, String param) {
        Page<Book> pages;
        pages = bookService.findAllSearchByCategory(param, PageRequest.of(page, ELEMENTS));

//        for (Book books : pages) {
//            int numerRoli = books.getRoles().iterator().next().getId();
//            users.setNrRoli(numerRoli);
//        }
        return pages;
}
}
