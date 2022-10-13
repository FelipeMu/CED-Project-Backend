package CEDProject.demo.repositories;

import CEDProject.demo.entities.ProfesorEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfesorRepository extends CrudRepository<ProfesorEntity, Long> {

}
