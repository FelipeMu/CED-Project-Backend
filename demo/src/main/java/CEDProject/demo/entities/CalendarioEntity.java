package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "calendario")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalendarioEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    private String periodo;
    private LocalDate fecha_inicio;
    private LocalDate fecha_termino;
    private Integer semanas_totales;
}
