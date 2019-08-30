package com.mkpp.bookstore.validator;


import com.mkpp.bookstore.constants.AppDemoConstants;
import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.utilities.AppdemoUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class CustomerRegisterValidator implements Validator {

	@Override
	public boolean supports(Class<?> cls) {
		return Customer.class.equals(cls);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Customer customer = (Customer) obj;
		
		ValidationUtils.rejectIfEmpty(errors, "firstName", "error.customerFirstName.empty");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "error.customerLastName.empty");
		ValidationUtils.rejectIfEmpty(errors, "email", "error.customerEmail.empty");
		ValidationUtils.rejectIfEmpty(errors, "password", "error.customerPassword.empty");
		
		if (!customer.getEmail().equals(null)) {
			boolean isMatch = AppdemoUtils.checkEmailOrPassword(AppDemoConstants.EMAIL_PATTERN, customer.getEmail());
			if(!isMatch) {
				errors.rejectValue("email", "error.customerEmailIsNotMatch");
			}
		}
		
		if (!customer.getPassword().equals(null)) {
			boolean isMatch = AppdemoUtils.checkEmailOrPassword(AppDemoConstants.PASSWORD_PATTERN, customer.getPassword());

			if(!isMatch) {
				errors.rejectValue("password", "error.customerPasswordIsNotMatch");
			}
		}
		
	}
	
	public void validateEmailExist(Customer customer, Errors errors) {
		if (customer != null) {
			errors.rejectValue("email", "error.userEmailExist");
		}
	}

}
