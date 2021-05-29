package pl.register.controllers;

import org.dom4j.rule.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.register.dao.TaskRegisterDao;
import pl.register.entity.TaskRegister;
import pl.register.repository.TaskRepository;

import java.util.List;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    private final TaskRepository taskRepository;
    private final TaskRegisterDao taskRegisterDao;
    public TaskController(TaskRepository taskRepository, TaskRegisterDao taskRegisterDao) {
        this.taskRepository = taskRepository;
        this.taskRegisterDao = taskRegisterDao;
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

    @GetMapping("/all")
    public String showAllTask(Model m) {
        List<TaskRegister> tasks = taskRepository.findAll();
        m.addAttribute("orderRegister", tasks);
        return "tasks/taskRegister";
    }

    @PostMapping("/all")
    public String showAllTaskPost(Model m) {
        List<TaskRegister> searchTask = taskRepository.findAll();
        m.addAttribute("orderRegister", searchTask);

        return "tasks/taskRegister";
    }

    @GetMapping("/{id}/delete")
    public String deleteTask(@PathVariable long id, Model m) {
        m.addAttribute("task", taskRepository.findById(id));

        return "tasks/deleteTask";
    }

    @PostMapping("/{id}/delete")
    public String deleteTask(@ModelAttribute TaskRegister task) {
        taskRepository.delete(task);
        return "mainMenu";
    }

    @GetMapping("/edit/{id}/{description}")
    public String editTask(@PathVariable long id, @PathVariable String description) {
        TaskRegister editTask = taskRegisterDao.findTaskByID(id);
        editTask.setDescribeOrder(description);

        taskRegisterDao.update(editTask);

        return "tasks/all";
    }

}
