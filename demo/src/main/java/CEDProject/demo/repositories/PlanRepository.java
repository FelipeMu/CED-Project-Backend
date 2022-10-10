package CEDProject.demo.repositories;

import CEDProject.demo.entities.PlanEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanRepository extends CrudRepository<PlanEntity, Long> {
}
