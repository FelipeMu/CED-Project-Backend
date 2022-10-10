package CEDProject.demo.repositories;

import CEDProject.demo.entities.TipoEvaluacionEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TipoEvaluacionRepository extends CrudRepository<TipoEvaluacionEntity, Long> {
}
