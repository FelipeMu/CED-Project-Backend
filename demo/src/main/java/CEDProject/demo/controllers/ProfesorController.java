package CEDProject.demo.controllers;

import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.repositories.ProfesorDictaRepository;
import CEDProject.demo.repositories.ProfesorRepository;
import CEDProject.demo.services.ProfesorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequestMapping("/miscursos")
public class ProfesorController {

    @Autowired
    ProfesorService profesorService;

    @Autowired
    ProfesorDictaRepository profesorDictaRepository;

    @GetMapping("/listar")
    public ArrayList<ProfesorEntity> listar(Model model){
        return profesorService.obtenerProfesor();
    }



}
