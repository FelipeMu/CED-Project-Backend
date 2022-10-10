package CEDProject.demo.services;

import CEDProject.demo.entities.ModalidadEntity;
import CEDProject.demo.repositories.ModalidadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class ModalidadService {

    @Autowired
    ModalidadRepository modalidadRepository;

    public ArrayList<ModalidadEntity> obtenerModalidad() {
        return (ArrayList<ModalidadEntity>) modalidadRepository.findAll();
    }

    public ModalidadEntity guardarModalidad(ModalidadEntity empleado) {
        return modalidadRepository.save(empleado);
    }

    public Optional<ModalidadEntity> obtenerPorId(Long id) {
        return modalidadRepository.findById(id);
    }

    public boolean eliminarModalidad(Long id) {
        try {
            modalidadRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
