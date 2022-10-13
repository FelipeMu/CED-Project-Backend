package CEDProject.demo.entities;


public class Curso {
    public Integer id;
    public String nombre;
    public Integer hrs_semanales;
    public Integer nivel;
    public String seccion;
    public String modalidad;
    public String periodo;

    public Curso(int i, String hola, int i1, int i2, String seccion2, String online, String s) {
    }


    public void setCurso(String seccion,
                            String modalidad,
                            String nombre,
                            Integer horas_semanales,
                            Integer nivel,
                            Integer id){
        this.modalidad = modalidad;
        this.hrs_semanales = horas_semanales;
        this.nombre = nombre;
        this.seccion = seccion;
        this.nivel = nivel;
        this.id = id;
        this.periodo = "2/2022";
    }
}
