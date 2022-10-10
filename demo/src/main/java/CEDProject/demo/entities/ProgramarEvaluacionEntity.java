package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "programar_evaluacion")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProgramarEvaluacionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    private String nombre;
    private LocalDate fecha;
    private Integer semana;
    private LocalTime hora_inicio;
    private LocalTime hora_termino;
    private String color;
    private Long id_tipo_evaluacion;
    private Long id_calendario;
    private Long id_modalidad;
    private Long codigo_asignatura;
}
