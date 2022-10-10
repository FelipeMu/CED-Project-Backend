package CEDProject.demo.repositories;

import CEDProject.demo.entities.AsignaturaEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AsignaturaRepository extends CrudRepository<AsignaturaEntity, Long> {
}
