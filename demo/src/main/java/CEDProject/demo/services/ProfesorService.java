package CEDProject.demo.services;

import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.repositories.ProfesorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class ProfesorService {

    @Autowired
    ProfesorRepository profesorRepository;

    public ArrayList<ProfesorEntity> obtenerProfesor() {
        return (ArrayList<ProfesorEntity>) profesorRepository.findAll();
    }

    public ProfesorEntity guardarProfesor(ProfesorEntity empleado) {
        return profesorRepository.save(empleado);
    }

    public Optional<ProfesorEntity> obtenerPorId(Long id) {
        return profesorRepository.findById(id);
    }

    public boolean eliminarProfesor(Long id) {
        try {
            profesorRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
