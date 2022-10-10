package CEDProject.demo.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "modalidad")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ModalidadEntity {
    @Id
    private Long codigo;

    private String tipo_modalidad;
}