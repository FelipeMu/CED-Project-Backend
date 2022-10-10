package CEDProject.demo.repositories;

import CEDProject.demo.entities.CarreraEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarreraRepository extends CrudRepository<CarreraEntity, Long> {
}
