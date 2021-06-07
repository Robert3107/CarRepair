package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.register.entity.Employee;
import pl.register.repository.EmployeeRepository;

import java.util.List;

@Controller
@RequestMapping("/user")
public class EmployeeController {

    private final EmployeeRepository employeeRepository;

    public EmployeeController(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @GetMapping("/add")
    public String addTask(Model m) {
        m.addAttribute("employee", new Employee());
        return "user/addEmployee";
    }

    @PostMapping("/add")
    public String addTaskPost(@ModelAttribute Employee employee) {
        employeeRepository.save(employee);
        return "redirect:all";
    }

    @GetMapping("/all")
    public String showAllEmployee(Model m) {
        List<Employee> employees = employeeRepository.findAll();
        m.addAttribute("employees", employees);
        return "user/employeeRegister";
    }

    @PostMapping("/all")
    public String showAllTaks(Model m) {
        List<Employee> searchEmployee = employeeRepository.findAll();
        m.addAttribute("employees", searchEmployee);

        return "user/employeeRegister";
    }

    @GetMapping("/{id}/delete")
    public String deleteEmployee(@PathVariable long id, Model m) {
        m.addAttribute("employee", employeeRepository.findById(id));

        return "user/deleteEmployee";
    }

    @PostMapping("/{id}/delete")
    public String deleteEmployee(@ModelAttribute Employee employee) {
        employeeRepository.delete(employee);
        return "redirect:../all";
    }

    @GetMapping("/edit/{id}")
    public String editEmployee(Model m, @PathVariable long id) {
        Employee editEmployee = employeeRepository.findByEmployeeId(id);
        m.addAttribute("employee", editEmployee);

        return "user/editEmployee";
    }

    @PostMapping("/edit/{id}")
    public String editEmployeePost(Employee employee) {
        employeeRepository.save(employee);

        return "redirect:../all";
    }

}
