package CEDProject.demo.controllers;

import CEDProject.demo.entities.Curso;
import CEDProject.demo.entities.ProfesorEntity;
import CEDProject.demo.services.ProfesorDictaService;
import CEDProject.demo.services.ProfesorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/miscursos")
public class ProfesorController {

    @Autowired
    ProfesorService profesorService;

    @Autowired
    ProfesorDictaService profesorDictaService;

    @GetMapping("/listar")
    public ArrayList<ProfesorEntity> listar(){
        ArrayList<ProfesorEntity> profes = profesorService.obtenerProfesor();
        return profes;
    }


    @RequestMapping(value = "{rut}")
    public ArrayList<Curso> obtenerCursos(@PathVariable("rut") String rut){
        return profesorDictaService.cursosPorProfesor(rut);
    }



}
