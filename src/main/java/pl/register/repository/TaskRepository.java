package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.register.entity.TaskRegister;

import java.util.List;

public interface TaskRepository extends JpaRepository<TaskRegister, Long> {

    @Query("SELECT e FROM TaskRegister e where e.id = ?1")
    TaskRegister findByTaskId(long id);

    @Query("SELECT e FROM TaskRegister e where e.isArchive = false ")
    List<TaskRegister> findTaskWhereArchiveIsFalse();

    @Query("SELECT e FROM TaskRegister e where e.isArchive = true")
    List<TaskRegister> findTaskWhereArchiveIsTrue();
}
