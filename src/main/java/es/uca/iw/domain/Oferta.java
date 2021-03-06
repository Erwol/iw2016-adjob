package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import es.uca.iw.reference.TipoContrato;
import javax.persistence.Enumerated;
import es.uca.iw.reference.EstadoOferta;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findOfertasByEmpresa", "findOfertasByEmpresaLike", "findOfertasByPuesto_buscado" })
public class Oferta {

    /**
     */
    @Size(min = 3, max = 30)
    private String nombre;

    /**
     */
    @Size(min = 10, max = 200)
    private String informacion;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_inicio;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_fin;

    /**
     */
    @Enumerated
    private TipoContrato tipo_contrato;

    /**
     */
    @Enumerated
    private EstadoOferta estado_oferta;

    /**
     */
    private Float sueldo;

    /**
     */
    private Integer numero_vacantes;

    /**
     */
    @Size(min = 10, max = 200)
    private String perfil;

    /**
     */
    @ManyToOne
    private Empresa empresa;

    /**
     */
    @ManyToOne
    private PuestoTrabajo puesto_buscado;
}
