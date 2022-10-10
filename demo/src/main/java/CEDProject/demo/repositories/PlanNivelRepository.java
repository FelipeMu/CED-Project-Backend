package CEDProject.demo.repositories;

import CEDProject.demo.entities.PlanNivelEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanNivelRepository extends CrudRepository<PlanNivelEntity, Long> {
}
