package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import javax.persistence.FetchType;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     */
    @Size(min = 3, max = 30)
    private String nombre;

    /**
     */
    @Size(min = 9, max = 9)
    private String cif;

    /**
     */
    @Size(min = 3, max = 200)
    private String actividad_profesional;

    /**
     */
    private Integer numero_empleados;

    /**
     */
    private Integer telefono;

    /**
     */
    @Size(min = 3, max = 30)
    private String web;

    /**
     */
    @Size(min = 3, max = 100)
    private String direccion;

    /**
     */
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "empresa")
    private Set<Oferta> ofertas = new HashSet<Oferta>();
}
