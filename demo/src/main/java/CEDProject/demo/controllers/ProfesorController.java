package CEDProject.demo.controllers;

import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.services.ProfesorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping
public class ProfesorController {

    @Autowired
    ProfesorService profesorService;

    @GetMapping("/listar")
    public String listar(Model model){
        System.out.printf("hola\n");
        ArrayList<ProfesorEntity> profesores = profesorService.obtenerProfesor();

        for (ProfesorEntity profe: profesores) {
            System.out.printf(profe + "\n");
        }

        System.out.printf("chao\n");




        //model.addAttribute("profesores", profesores);
        return "index";
    }

}
