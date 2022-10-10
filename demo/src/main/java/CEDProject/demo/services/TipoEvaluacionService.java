package CEDProject.demo.services;

import CEDProject.demo.entities.TipoEvaluacionEntity;
import CEDProject.demo.repositories.TipoEvaluacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class TipoEvaluacionService {

    @Autowired
    TipoEvaluacionRepository tipoEvaluacionRepository;

    public ArrayList<TipoEvaluacionEntity> obtenerTipoEvaluacion() {
        return (ArrayList<TipoEvaluacionEntity>) tipoEvaluacionRepository.findAll();
    }

    public TipoEvaluacionEntity guardarTipoEvaluacion(TipoEvaluacionEntity empleado) {
        return tipoEvaluacionRepository.save(empleado);
    }

    public Optional<TipoEvaluacionEntity> obtenerPorId(Long id) {
        return tipoEvaluacionRepository.findById(id);
    }

    public boolean eliminarTipoEvaluacion(Long id) {
        try {
            tipoEvaluacionRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
