package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.register.entity.TaskRegister;

public interface TaskRepository extends JpaRepository<TaskRegister, Long> {

}
