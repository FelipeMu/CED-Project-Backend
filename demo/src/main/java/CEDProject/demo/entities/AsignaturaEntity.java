package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "asignatura")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AsignaturaEntity {

    @Id
    private Long codigo;

    private String nombre;
    private Integer horas_semanales;
    private Integer nivel;
    private Boolean laboratorio;
    private Boolean visible;

}
