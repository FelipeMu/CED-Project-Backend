package CEDProject.demo.services;

import CEDProject.demo.entities.AsignaturaEntity;
import CEDProject.demo.repositories.AsignaturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class AsignaturaService {

    @Autowired
    AsignaturaRepository asignaturaRepository;

    public ArrayList<AsignaturaEntity> obtenerAsignatura() {
        return (ArrayList<AsignaturaEntity>) asignaturaRepository.findAll();
    }

    public AsignaturaEntity guardarAsignatura(AsignaturaEntity empleado) {
        return asignaturaRepository.save(empleado);
    }

    public Optional<AsignaturaEntity> obtenerPorId(Long id) {
        return asignaturaRepository.findById(id);
    }

    public boolean eliminarAsignatura(Long id) {
        try {
            asignaturaRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
