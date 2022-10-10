package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "plan_nivel")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlanNivelEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    private Integer nivel;
    private Long codigo_asignatura;
    private Long id_plan;
}
