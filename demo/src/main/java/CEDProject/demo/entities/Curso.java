package CEDProject.demo.entities;


public class Curso {
    private final Integer id;
    private final String nombre;
    private final Integer hrs_semanales;
    private final Integer nivel;
    private final String seccion;
    private final String modalidad;
    private final String periodo;

    public Curso(Integer id,
                       String nombre,
                       Integer horas_semanales,
                       Integer nivel,
                       String seccion,
                       String modalidad){
        this.modalidad = modalidad;
        this.hrs_semanales = horas_semanales;
        this.nombre = nombre;
        this.seccion = seccion;
        this.nivel = nivel;
        this.id = id;
        this.periodo = "2/2022";

    }

    public Integer getHoras(){return this.hrs_semanales;}

    public Integer getId(){return this.id;}

    public Integer getNivel(){return this.nivel;}

    public String getNombre(){return this.nombre;}

    public String getSeccion(){return this.seccion;}

    public String getModalidad(){return this.modalidad;}

    public String getPeriodo(){return this.periodo;}


}
