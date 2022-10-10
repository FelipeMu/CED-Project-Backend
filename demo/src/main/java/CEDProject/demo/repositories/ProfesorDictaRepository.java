package CEDProject.demo.repositories;

import CEDProject.demo.entities.ProfesorDictaEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfesorDictaRepository extends CrudRepository<ProfesorDictaEntity, Long> {
}
