package CEDProject.demo.services;

import CEDProject.demo.entities.PlanEntity;
import CEDProject.demo.repositories.PlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class PlanService {

    @Autowired
    PlanRepository planRepository;

    public ArrayList<PlanEntity> obtenerPlan() {
        return (ArrayList<PlanEntity>) planRepository.findAll();
    }

    public PlanEntity guardarPlan(PlanEntity empleado) {
        return planRepository.save(empleado);
    }

    public Optional<PlanEntity> obtenerPorId(Long id) {
        return planRepository.findById(id);
    }

    public boolean eliminarPlan(Long id) {
        try {
            planRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
