package CEDProject.demo.services;


import CEDProject.demo.entities.CalendarioEntity;
import CEDProject.demo.repositories.CalendarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Optional;

@Service
public class CalendarioService {

    @Autowired
    CalendarioRepository calendarioRepository;

    public ArrayList<CalendarioEntity> obtenerCalendario() {
        return (ArrayList<CalendarioEntity>) calendarioRepository.findAll();
    }

    public CalendarioEntity guardarCalendario(CalendarioEntity empleado) {
        return calendarioRepository.save(empleado);
    }

    public Optional<CalendarioEntity> obtenerPorId(Long id) {
        return calendarioRepository.findById(id);
    }

    public boolean eliminarCalendario(Long id) {
        try {
            calendarioRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
