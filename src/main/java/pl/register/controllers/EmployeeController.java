package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.register.repository.EmployeeRepository;
import pl.register.repository.TaskRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Controller
@RequestMapping("/user")
public class EmployeeController {
    @PersistenceContext
    private EntityManager em;
    private EmployeeRepository employeeRepository;
    private TaskRepository taskRepository;

    public EmployeeController(EmployeeRepository employeeRepository, TaskRepository taskRepository) {
        this.employeeRepository = employeeRepository;
        this.taskRepository = taskRepository;
    }


}
