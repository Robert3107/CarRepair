package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.register.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {


}
