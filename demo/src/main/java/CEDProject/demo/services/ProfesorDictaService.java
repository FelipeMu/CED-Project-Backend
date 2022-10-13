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
        ArrayList<Curso> cursosProfesor = new ArrayList<Curso>();
        Curso curso_;



        ArrayList<Integer> nivel = profesorDictaRepository.obtenerNivelPorRut(rut);
        //System.out.println(nivel);
        ArrayList<Integer> horas = profesorDictaRepository.obtenerHorasPorRut(rut);
        //System.out.println(horas);
        ArrayList<String> secciones = profesorDictaRepository.obtenerSeccionPorRut(rut);
        //System.out.println(secciones);
        ArrayList<String> cursos = profesorDictaRepository.obtenerCursosPorRut(rut);
        //System.out.println(cursos);
        ArrayList<String> modalidad = profesorDictaRepository.obtenerModalidadPorRut(rut);
        //System.out.println(modalidad);
        ArrayList<Integer> idProfDicta = profesorDictaRepository.obtenerIdProfeDictaPorRut(rut);
        //System.out.println(idProfDicta);

        for (int i = 0; i<nivel.size(); i++){
            curso_ = new Curso(idProfDicta.get(i),
                    cursos.get(i),
                    horas.get(i),
                    nivel.get(i),
                    secciones.get(i),
                    modalidad.get(i),
                    "2/2022");



            cursosProfesor.add(curso_);
            System.out.println(cursosProfesor.get(i).id+"\n");
            //new Curso(2,"hola",3,4,"seccion2","online","2/2022");
        }


        //System.out.println(cursosProfesor);
        for (Curso curso : cursosProfesor)
            System.out.println(curso.nivel + curso.seccion + curso.nombre + curso.hrs_semanales + curso.modalidad + "fin\n" + curso.id + "\n");


        return cursosProfesor;
    }


    public ArrayList<Curso> eliminarDuplicadosCursos(ArrayList<Curso> cursosDuplicados){
        ArrayList<Curso> cursosSalida = new ArrayList<>();
        cursosSalida.add(cursosDuplicados.get(0));
        for (Curso cursosDuplicado : cursosDuplicados) {
            if(cursosSalida.contains(cursosDuplicado)){
                cursosSalida.add(cursosDuplicado);
            }
        }
        return cursosSalida;
    }
}

