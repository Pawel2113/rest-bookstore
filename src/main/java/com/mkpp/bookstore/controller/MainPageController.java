package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainPageController {

    @Autowired
    private BookService bookService;

	
	private static final Logger LOG = LoggerFactory.getLogger(MainPageController.class);

	@GetMapping(value = {"/", "/index"})
	public String showMainPage(ModelMap modelMap, Model model) {
		LOG.info("**** WYWOŁANO > showMainPage()");
		bookService.getBookImageModel(model, bookService.findThreeRecommended(), "Recommended");
		bookService.getBookImageModel(model, bookService.findSixOnPromotion(), "Promotion");
		bookService.getBookImageModel(model, bookService.findAllPopular(), "Popular");
		return "index";
	}

	@GetMapping(value = {"/literatura-piekna"})
	public String showCategoryPage(ModelMap modelMap) {

//		bookService.showBook(modelMap);
		return "index";
	}
}
