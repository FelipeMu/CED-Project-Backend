package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "profesor_dicta")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProfesorDictaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    private String seccion;
    private Long id_profesor;
    private Long codigo_asignatura;
    private Long id_modalidad;
}
