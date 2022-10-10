package CEDProject.demo.services;

import CEDProject.demo.entities.PlanNivelEntity;
import CEDProject.demo.repositories.PlanNivelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class PlanNivelService {

    @Autowired
    PlanNivelRepository planNivelRepository;

    public ArrayList<PlanNivelEntity> obtenerPlanNivel() {
        return (ArrayList<PlanNivelEntity>) planNivelRepository.findAll();
    }

    public PlanNivelEntity guardarPlanNivel(PlanNivelEntity empleado) {
        return planNivelRepository.save(empleado);
    }

    public Optional<PlanNivelEntity> obtenerPorId(Long id) {
        return planNivelRepository.findById(id);
    }

    public boolean eliminarPlanNivel(Long id) {
        try {
            planNivelRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
