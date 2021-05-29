package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.register.entity.TaskRegister;

import java.util.List;

public interface TaskRepository extends JpaRepository<TaskRegister, Long> {

    // Wyszukiwanie przez pesel klienta
    List<TaskRegister> findByCustomerPesel(String pesel);

    // Wyszukiwanie przez numer telefonu klienta
    List<TaskRegister> findByCustomerTelephone(String telephone);


    @Query("SELECT e FROM TaskRegister e where e.id = ?1")
    TaskRegister findByIdDescribeOrder(long id);

}
