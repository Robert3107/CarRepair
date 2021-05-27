package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.register.entity.Employee;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    List<Employee> findByUserNameAndPassword(String userName, String password);
}
