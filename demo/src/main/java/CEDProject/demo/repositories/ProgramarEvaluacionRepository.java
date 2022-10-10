package CEDProject.demo.repositories;

import CEDProject.demo.entities.ProgramarEvaluacionEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProgramarEvaluacionRepository extends CrudRepository<ProgramarEvaluacionEntity, Long> {
}
