package CEDProject.demo.controllers;

import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.services.ProfesorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequestMapping
public class ProfesorController {

    @Autowired
    ProfesorService profesorService;

    @GetMapping("/listar")
    public String listar(Model model){
        System.out.printf("inicio\n");

        ArrayList<ProfesorEntity> profesores = profesorService.obtenerProfesor();

        Long id = Long.valueOf(2);
        String rut = "20.200.200-3";
        String nombre = "Jual Lopez";
        String correo = "juan.lopez@usach.cl";
        String contrasena = "1234567";

        ProfesorEntity profe_ = new ProfesorEntity(id, rut, nombre, correo, contrasena);

        profesorService.guardarProfesor(profe_);

        for (ProfesorEntity profe: profesores) {
            System.out.printf(profe + "\n");
        }

        System.out.printf("fin\n");



        return "index";
    }

}
