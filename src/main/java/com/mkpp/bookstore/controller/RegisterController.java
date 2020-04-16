package com.mkpp.bookstore.controller;

import com.mkpp.bookstore.exception.TokenNotFoundException;
import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.model.Token;
import com.mkpp.bookstore.repository.CustomerRepository;
import com.mkpp.bookstore.repository.TokenRepository;
import com.mkpp.bookstore.service.CustomerService;
import com.mkpp.bookstore.validator.CustomerRegisterValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Locale;
import java.util.Optional;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private TokenRepository tokenRepository;
    @Autowired
    private CustomerRepository customerRepository;


    @Autowired
    MessageSource messageSource;

    @GetMapping("/sign-up")
    public String registerForm(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        model.addAttribute("alertMailExist", false);
        return "sign-up";
    }
    
    @PostMapping("/adduser")
    public String registerAction(Customer customer, BindingResult result, Model model, Locale locale) {

        boolean isCustomerInDb = customerService.isCustomer(customer.getEmail());

        if (isCustomerInDb == false) {

            new CustomerRegisterValidator().validateEmailExist(customer, result);
            new CustomerRegisterValidator().validate(customer, result);

            customerService.saveCustomer(customer);

            model.addAttribute("message", messageSource.getMessage("customer.register.success", null, locale));

        }
        else {
            //todo alert: customer exist
            model.addAttribute("alertMailExist", true);
            return "sign-up";
        }
        return "index";
    }

    @GetMapping("/token")
    public String singUp(@RequestParam String value) {
        Optional<Token> byValue = Optional.ofNullable(tokenRepository.findByValue(value).orElseThrow(() -> new TokenNotFoundException()));
        Optional<Customer> customer = Optional.ofNullable(byValue.get().getCustomer());
        customer.get().setEnabled(true);
        customerRepository.save(customer.get());
        return "index";
    }
}
