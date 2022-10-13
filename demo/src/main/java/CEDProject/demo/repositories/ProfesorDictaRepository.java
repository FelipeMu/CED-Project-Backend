package CEDProject.demo.repositories;

import CEDProject.demo.entities.ProfesorDictaEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface ProfesorDictaRepository extends CrudRepository<ProfesorDictaEntity, Long> {

    @Query(value = "SELECT pd.codigo_asignatura FROM ProfesorDictaEntity pd WHERE pd.id_profesor = :id_profesor")
    ArrayList<Integer> findSeccionAsignaturasProfesor(@Param("id_profesor")Long id);

    @Query(value = "SELECT DISTINCT asig.nombre FROM AsignaturaEntity as asig, ProfesorDictaEntity as pd, PlanNivelEntity as pn, ModalidadEntity as md, ProfesorEntity as pr WHERE pr.rut = :rut AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura")
    ArrayList<String> obtenerCursosPorRut(@Param("rut")String rut);

    @Query(value = "SELECT DISTINCT pd.seccion FROM AsignaturaEntity as asig, ProfesorDictaEntity as pd, PlanNivelEntity as pn, ModalidadEntity as md, ProfesorEntity as pr WHERE pr.rut = :rut AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura")
    ArrayList<String> obtenerSeccionPorRut(@Param("rut")String rut);

    @Query(value = "SELECT DISTINCT pn.nivel FROM AsignaturaEntity as asig, ProfesorDictaEntity as pd, PlanNivelEntity as pn, ModalidadEntity as md, ProfesorEntity as pr WHERE pr.rut = :rut AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura")
    ArrayList<Integer> obtenerNivelPorRut(@Param("rut")String rut);

    @Query(value = "SELECT DISTINCT asig.horas_semanales FROM AsignaturaEntity as asig, ProfesorDictaEntity as pd, PlanNivelEntity as pn, ModalidadEntity as md, ProfesorEntity as pr WHERE pr.rut = :rut AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura")
    ArrayList<Integer> obtenerHorasPorRut(@Param("rut")String rut);

    @Query(value = "SELECT DISTINCT md.tipo_modalidad FROM AsignaturaEntity as asig, ProfesorDictaEntity as pd, PlanNivelEntity as pn, ModalidadEntity as md, ProfesorEntity as pr WHERE pr.rut = :rut AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura")
    ArrayList<String> obtenerModalidadPorRut(@Param("rut")String rut);
}
