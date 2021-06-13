package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.register.entity.Parts;

public interface PartsRepository extends JpaRepository<Parts, Long> {

    @Query("SELECT e FROM Parts e where e.id = ?1")
    Parts findByPartsId(long id);
}
