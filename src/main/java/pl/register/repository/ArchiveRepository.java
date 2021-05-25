package pl.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.register.entity.Archive;

public interface ArchiveRepository extends JpaRepository<Archive, Long> {
}
