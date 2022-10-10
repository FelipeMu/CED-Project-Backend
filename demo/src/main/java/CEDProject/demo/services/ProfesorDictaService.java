package CEDProject.demo.services;

import CEDProject.demo.entities.ProfesorDictaEntity;
import CEDProject.demo.repositories.ProfesorDictaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class ProfesorDictaService {

    @Autowired
    ProfesorDictaRepository profesorDictaRepository;

    public ArrayList<ProfesorDictaEntity> obtenerProfesorDicta() {
        return (ArrayList<ProfesorDictaEntity>) profesorDictaRepository.findAll();
    }

    public ProfesorDictaEntity guardarProfesorDicta(ProfesorDictaEntity empleado) {
        return profesorDictaRepository.save(empleado);
    }

    public Optional<ProfesorDictaEntity> obtenerPorId(Long id) {
        return profesorDictaRepository.findById(id);
    }

    public boolean eliminarProfesorDicta(Long id) {
        try {
            profesorDictaRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
