package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.register.entity.Customer;
import pl.register.repository.CustomerRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    private final CustomerRepository customerRepository;

    public CustomerController(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @GetMapping("/all")
    public String showAllCustomers(Model m) {
        List<Customer> customerList = customerRepository.findAll();
        m.addAttribute("customers", customerList);
        return "customer/customerRegister";
    }

    @PostMapping("/all")
    public String showAllCustomer(Model m) {
        List<Customer> customerList = customerRepository.findAll();
        m.addAttribute("customers", customerList);
        return "customer/customerRegister";
    }

    @GetMapping("/add")
    public String addCustomer(Model m) {
        m.addAttribute("customer", new Customer());
        return "customer/addCustomer";
    }

    @PostMapping("/add")
    public String addCustomerPost(@ModelAttribute @Valid Customer customer, BindingResult violations) {
        if (violations.hasErrors()) {
            return "customer/addCustomerError";
        }
        customerRepository.save(customer);
        return "redirect:all";
    }
}
