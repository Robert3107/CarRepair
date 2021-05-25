package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.register.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
