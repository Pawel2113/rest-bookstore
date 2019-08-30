package com.mkpp.bookstore.controller;


import com.mkpp.bookstore.model.Customer;
import com.mkpp.bookstore.service.CustomerService;
import com.mkpp.bookstore.utilities.CustomerUtilities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.Locale;

@Controller
public class ProfileController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private MessageSource messageSource;
	
	@GetMapping(value = "/profile")
	public String showUserProfilePage(Model model) {
		System.out.println("logowanie");
		String customerName = CustomerUtilities.getLoggedUser();
		Customer customer = customerService.findUserByEmail(customerName);
//		int nrRole = customer.getRoles().iterator().next().getId();
//		customer.setNrRole(nrRole);
		model.addAttribute("customer", customer);
		return "profile";
	}
	
//	@GetMapping(value = "/editpassword")
//	public String editUserPassword(Model model) {
//		String username = UserUtilities.getLoggedUser();
//		User user = userService.findUserByEmail(username);
//		model.addAttribute("user", user);
//		return "editpassword";
//	}
//
//	@PostMapping(value = "/updatepass")
//	public String changeUSerPassword(User user, BindingResult result, Model model, Locale locale) {
//		String returnPage = null;
//		new ChangePasswordValidator().validate(user, result);
//		new ChangePasswordValidator().checkPasswords(user.getNewPassword(), result);
//		if (result.hasErrors()) {
//			returnPage = "editpassword";
//		} else {
//			userService.updateUserPassword(user.getNewPassword(), user.getEmail());
//			returnPage = "editpassword";
//			model.addAttribute("message", messageSource.getMessage("passwordChange.success", null, locale));
//		}
//		return returnPage;
//	}
//
//	@GetMapping(value = "/editprofil")
//	public String changeUserData(Model model) {
//		String username = UserUtilities.getLoggedUser();
//		User user = userService.findUserByEmail(username);
//		model.addAttribute("user", user);
//		return "editprofil";
//	}
//
//	@PostMapping(value = "/updateprofil")
//	public String changeUserDataAction(User user, BindingResult result, Model model, Locale locale) {
//		String returnPage = null;
//		new EditUserProfileValidator().validate(user, result);
//		if (result.hasErrors()) {
//			returnPage = "editprofil";
//		} else {
//			userService.updateUserProfile(user.getName(), user.getLastName(), user.getEmail(), user.getId());
//			model.addAttribute("message", messageSource.getMessage("profilEdit.success", null, locale));
//			returnPage = "afteredit";
//		}
//		return returnPage;
//	}

}