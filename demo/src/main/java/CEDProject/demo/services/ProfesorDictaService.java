package CEDProject.demo.services;

import CEDProject.demo.entities.Curso;
import CEDProject.demo.entities.ProfesorDictaEntity;
import CEDProject.demo.repositories.ProfesorDictaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class ProfesorDictaService {

    @Autowired
    ProfesorDictaRepository profesorDictaRepository;

    public ArrayList<ProfesorDictaEntity> obtenerProfesorDicta() {
        return (ArrayList<ProfesorDictaEntity>) profesorDictaRepository.findAll();
    }

    public ProfesorDictaEntity guardarProfesorDicta(ProfesorDictaEntity empleado) {
        return profesorDictaRepository.save(empleado);
    }

    public Optional<ProfesorDictaEntity> obtenerPorId(Long id) {
        return profesorDictaRepository.findById(id);
    }

    public boolean eliminarProfesorDicta(Long id) {
        try {
            profesorDictaRepository.deleteById(id);
            return true;
        } catch (Exception err) {
            return false;
        }
    }

    public ArrayList<Curso> cursosPorProfesor(String rut){
        ArrayList<Curso> cursosProfesor = new ArrayList<>();
        ArrayList<Integer> nivel = profesorDictaRepository.obtenerNivelPorRut(rut);
        ArrayList<Integer> horas = profesorDictaRepository.obtenerHorasPorRut(rut);
        ArrayList<String> secciones = profesorDictaRepository.obtenerSeccionPorRut(rut);
        ArrayList<String> cursos = profesorDictaRepository.obtenerCursosPorRut(rut);
        ArrayList<String> modalidad = profesorDictaRepository.obtenerModalidadPorRut(rut);
        ArrayList<Integer> idProfDicta = profesorDictaRepository.obtenerIdProfeDictaPorRut(rut);

        for (int i = 0; i<nivel.size(); i++)
            cursosProfesor.add(new Curso(idProfDicta.get(i), cursos.get(i), horas.get(i), nivel.get(i), secciones.get(i), modalidad.get(i)));

        return eliminarDuplicadosCursos(cursosProfesor);
    }


    public ArrayList<Curso> eliminarDuplicadosCursos(ArrayList<Curso> cursosDuplicados){
        ArrayList<Curso> cursosSalida = new ArrayList<>();
        for (Curso cursosDuplicado : cursosDuplicados) {
            if (!existe(cursosSalida, cursosDuplicado.getId())) {
                cursosSalida.add(cursosDuplicado);
            }
        }
        return cursosSalida;
    }

    public boolean existe(ArrayList<Curso> cursos, int id){
        for (Curso curso : cursos) {
            if (curso.getId() == id) {
                return true;
            }
        }
        return false;
    }
}

