package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.register.entity.TaskRegister;
import pl.register.repository.TaskRepository;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/tasks")

public class TaskController {
    private TaskRepository taskRepository;

    public TaskController(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @GetMapping("/read/{id}")
    @ResponseBody
    public String readTask(@PathVariable long id) {
        return taskRepository.findById(id).toString();
    }

    @GetMapping("/read")
    @ResponseBody
    public String readTask() {
        return taskRepository.findAll().toString();
    }

    @GetMapping("/add")
    public String addTask(Model m) {
        m.addAttribute("task", new TaskRegister());
        return "tasks/addTask";
    }

    @PostMapping("/add")
    public String addTaskPost(@ModelAttribute TaskRegister taskRegister) {
        taskRepository.save(taskRegister);
        return "mainMenu";
    }

    //nie działa rysowanie tabeli
    @GetMapping("/all")
    public String showAllTask(Model m) {
        List<TaskRegister> tasks = taskRepository.findAll();
        m.addAttribute("orderRegister", tasks);
        return "tasks/taskRegister";
    }

}
