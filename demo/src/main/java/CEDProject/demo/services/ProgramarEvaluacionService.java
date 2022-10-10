package CEDProject.demo.services;

import CEDProject.demo.entities.ProgramarEvaluacionEntity;
import CEDProject.demo.repositories.ProgramarEvaluacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class ProgramarEvaluacionService {

    @Autowired
    ProgramarEvaluacionRepository programarEvaluacionRepository;

    public ArrayList<ProgramarEvaluacionEntity> obtenerProgramarEvaluacion() {
        return (ArrayList<ProgramarEvaluacionEntity>) programarEvaluacionRepository.findAll();
    }

    public ProgramarEvaluacionEntity guardarProgramarEvaluacion(ProgramarEvaluacionEntity empleado) {
        return programarEvaluacionRepository.save(empleado);
    }

    public Optional<ProgramarEvaluacionEntity> obtenerPorId(Long id) {
        return programarEvaluacionRepository.findById(id);
    }

    public boolean eliminarProgramarEvaluacion(Long id) {
        try {
            programarEvaluacionRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
