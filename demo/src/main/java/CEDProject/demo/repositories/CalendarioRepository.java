package CEDProject.demo.repositories;

import CEDProject.demo.entities.CalendarioEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CalendarioRepository extends CrudRepository<CalendarioEntity, Long> {
}
