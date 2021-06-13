package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.register.entity.TaskRegister;
import pl.register.repository.TaskRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    //dodaj jebany debilu błedy dla pracowników, encja klienta, walidacja klienta, błędy dla klienta

    private final TaskRepository taskRepository;

    public TaskController(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @GetMapping("/add")
    public String addTask(Model m) {
        m.addAttribute("task", new TaskRegister());
        return "tasks/addTask";
    }

    @PostMapping("/add")
    public String addTaskPost(@ModelAttribute @Valid TaskRegister taskRegister, BindingResult violations) {
        if (violations.hasErrors()) {
            return "tasks/addTaskError";
        }
        taskRepository.save(taskRegister);
        return "redirect:all";
    }

    @GetMapping("/all")
    public String showAllTask(Model m) {
        List<TaskRegister> tasks = taskRepository.findTaskWhereArchiveIsFalse();
        m.addAttribute("orderRegister", tasks);
        return "tasks/taskRegister";
    }

    @PostMapping("/all")
    public String showAllTaskPost(Model m) {
        List<TaskRegister> searchTask = taskRepository.findTaskWhereArchiveIsFalse();
        m.addAttribute("orderRegister", searchTask);

        return "tasks/taskRegister";
    }

    @GetMapping("/edit/{id}")
    public String editTask(Model m, @PathVariable long id) {
        TaskRegister editTask = taskRepository.findByTaskId(id);
        m.addAttribute("task", editTask);

        return "tasks/editTask";
    }

    @PostMapping("/edit/{id}")
    public String editTaskPost(@Valid TaskRegister taskRegister, BindingResult violations) {
        if (violations.hasErrors()) {
            return "tasks/editTaskError";
        }
        taskRepository.save(taskRegister);
        return "redirect:../all";
    }

    @GetMapping("/archive/{id}")
    public String archiveTask(Model m, @PathVariable long id) {
        TaskRegister archiveTask = taskRepository.findByTaskId(id);
        m.addAttribute("task", archiveTask);

        return "tasks/archivingTask";
    }

    @PostMapping("/archive/{id}")
    public String archiveTaskPost(@Valid TaskRegister taskRegister, BindingResult violations) {
        if (violations.hasErrors()) {
            return "tasks/archiveError";
        }
        taskRegister.setArchive(true);
        taskRepository.save(taskRegister);

        return "redirect:../all";
    }

    @GetMapping("/archiveTask")
    public String archive(Model m) {
        List<TaskRegister> taskRegister = taskRepository.findTaskWhereArchiveIsTrue();
        m.addAttribute("orderRegister", taskRegister);

        return "tasks/archive";
    }

    @PostMapping("/archiveTask")
    public String archivePost(Model m) {
        List<TaskRegister> taskRegister = taskRepository.findTaskWhereArchiveIsTrue();
        m.addAttribute("orderRegister", taskRegister);

        return "tasks/archive";
    }

    @GetMapping("/delete/{id}")
    public String deleteArchiveTask(@PathVariable long id, Model m) {
        m.addAttribute("task", taskRepository.findById(id));

        return "tasks/deleteTask";
    }

    @PostMapping("/delete/{id}")
    public String deleteArchiveTaskPost(@ModelAttribute TaskRegister task) {
        taskRepository.delete(task);
        return "redirect:../archiveTask";
    }

}
