package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.register.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

    @Query("SELECT e FROM Customer e where e.id = ?1")
    Customer findByCustomerId(long id);

}
