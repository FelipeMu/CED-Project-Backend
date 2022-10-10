package CEDProject.demo.services;

import CEDProject.demo.entities.AdminEntity;
import CEDProject.demo.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class AdminService {

    @Autowired
    AdminRepository adminRepository;

    public ArrayList<AdminEntity> obtenerAdmins() {
        return (ArrayList<AdminEntity>) adminRepository.findAll();
    }

    public AdminEntity guardarAdmin(AdminEntity empleado) {
        return adminRepository.save(empleado);
    }

    public Optional<AdminEntity> obtenerPorId(Long id) {
        return adminRepository.findById(id);
    }

    public boolean eliminarAdmin(Long id) {
        try {
            adminRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }
}
