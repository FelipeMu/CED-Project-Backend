package CEDProject.demo.services;


import CEDProject.demo.entities.CarreraEntity;
import CEDProject.demo.repositories.CarreraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class CarreraService {

    @Autowired
    CarreraRepository carreraRepository;

    public ArrayList<CarreraEntity> obtenerCarrera() {
        return (ArrayList<CarreraEntity>) carreraRepository.findAll();
    }

    public CarreraEntity guardarCarrera(CarreraEntity empleado) {
        return carreraRepository.save(empleado);
    }

    public Optional<CarreraEntity> obtenerPorId(Long id) {
        return carreraRepository.findById(id);
    }

    public boolean eliminarCarrera(Long id) {
        try {
            carreraRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
