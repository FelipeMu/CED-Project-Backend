package CEDProject.demo.controllers;

import CEDProject.demo.entities.Curso;
import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.repositories.ProfesorDictaRepository;
import CEDProject.demo.repositories.ProfesorRepository;
import CEDProject.demo.services.ProfesorDictaService;
import CEDProject.demo.services.ProfesorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/miscursos")
public class ProfesorController {

    @Autowired
    ProfesorService profesorService;

    @Autowired
    ProfesorDictaRepository profesorDictaRepository;



    @Autowired
    ProfesorDictaService profesorDictaService;

    @GetMapping("/listar")
    public ArrayList<Curso> listar(Model model){
        // profesorDictaService.cursosPorProfesor("2222222");
        //System.out.println(cursos);
        //ArrayList<Curso> cursos= profesorDictaRepository.obtenerCusosPorRut("2222222");
        ArrayList<Curso> cursitos = profesorDictaService.cursosPorProfesor("2222222");

        for (int i = 0; i<cursitos.size(); i++){
            System.out.println(cursitos.get(i).id + "este es el id2: \n");
        }

        return cursitos;
    }


    @RequestMapping(value = "{rut}")
    public ArrayList<Curso> listar(@PathVariable("rut") String rut){
        return profesorDictaService.cursosPorProfesor(rut);
    }



}
