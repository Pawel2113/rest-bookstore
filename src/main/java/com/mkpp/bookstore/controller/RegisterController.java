package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.service.CustomerService;
import com.mkpp.bookstore.validator.CustomerRegisterValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Locale;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    MessageSource messageSource;

    @GetMapping(value = "/register")
    public String registerForm(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "register";
    }
    
    @PostMapping(value = "/adduser")
    public String registerAction(Customer customer, BindingResult result, Model model, Locale locale) {

        String returnPage = null;

        Customer customerExist = customerService.findUserByEmail(customer.getEmail());

        new CustomerRegisterValidator().validateEmailExist(customerExist, result);

        new CustomerRegisterValidator().validate(customer, result);

        customerService.saveCustomer(customer);

        model.addAttribute("message", messageSource.getMessage("customer.register.success", null, locale));

        return "index";
    }
}
