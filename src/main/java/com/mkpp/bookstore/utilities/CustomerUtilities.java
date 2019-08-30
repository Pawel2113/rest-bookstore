package com.mkpp.bookstore.utilities;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class CustomerUtilities {

    public static String getLoggedUser() {
        String customerName = null;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if(!(auth instanceof AnonymousAuthenticationToken)) {
            customerName = auth.getName();
        }
        return customerName;
    }
}
