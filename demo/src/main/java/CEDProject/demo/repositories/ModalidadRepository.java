package CEDProject.demo.repositories;

import CEDProject.demo.entities.ModalidadEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ModalidadRepository extends CrudRepository<ModalidadEntity, Long> {
}
