// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.web;

import es.uca.iw.domain.Cursos;
import es.uca.iw.domain.Cv;
import es.uca.iw.domain.Empresa;
import es.uca.iw.domain.Experiencia;
import es.uca.iw.domain.Idiomas;
import es.uca.iw.domain.Oferta;
import es.uca.iw.domain.PeticionOferta;
import es.uca.iw.domain.PuestoTrabajo;
import es.uca.iw.domain.Titulos;
import es.uca.iw.domain.Usuario;
import es.uca.iw.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Cursos, String> ApplicationConversionServiceFactoryBean.getCursosToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Cursos, java.lang.String>() {
            public String convert(Cursos cursos) {
                return new StringBuilder().append(cursos.getNombre()).append(' ').append(cursos.getNombre_academia()).append(' ').append(cursos.getDescripcion()).append(' ').append(cursos.getFecha_inicio()).toString();
            }
        };
    }
    
    public Converter<Long, Cursos> ApplicationConversionServiceFactoryBean.getIdToCursosConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Cursos>() {
            public es.uca.iw.domain.Cursos convert(java.lang.Long id) {
                return Cursos.findCursos(id);
            }
        };
    }
    
    public Converter<String, Cursos> ApplicationConversionServiceFactoryBean.getStringToCursosConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Cursos>() {
            public es.uca.iw.domain.Cursos convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Cursos.class);
            }
        };
    }
    
    public Converter<Cv, String> ApplicationConversionServiceFactoryBean.getCvToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Cv, java.lang.String>() {
            public String convert(Cv cv) {
                return new StringBuilder().append(cv.getFoto()).append(' ').append(cv.getTrayectoria()).toString();
            }
        };
    }
    
    public Converter<Long, Cv> ApplicationConversionServiceFactoryBean.getIdToCvConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Cv>() {
            public es.uca.iw.domain.Cv convert(java.lang.Long id) {
                return Cv.findCv(id);
            }
        };
    }
    
    public Converter<String, Cv> ApplicationConversionServiceFactoryBean.getStringToCvConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Cv>() {
            public es.uca.iw.domain.Cv convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Cv.class);
            }
        };
    }
    
    public Converter<Empresa, String> ApplicationConversionServiceFactoryBean.getEmpresaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Empresa, java.lang.String>() {
            public String convert(Empresa empresa) {
                return new StringBuilder().append(empresa.getNombre()).append(' ').append(empresa.getCif()).append(' ').append(empresa.getActividad_profesional()).append(' ').append(empresa.getNumero_empleados()).toString();
            }
        };
    }
    
    public Converter<Long, Empresa> ApplicationConversionServiceFactoryBean.getIdToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Empresa>() {
            public es.uca.iw.domain.Empresa convert(java.lang.Long id) {
                return Empresa.findEmpresa(id);
            }
        };
    }
    
    public Converter<String, Empresa> ApplicationConversionServiceFactoryBean.getStringToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Empresa>() {
            public es.uca.iw.domain.Empresa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Empresa.class);
            }
        };
    }
    
    public Converter<Experiencia, String> ApplicationConversionServiceFactoryBean.getExperienciaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Experiencia, java.lang.String>() {
            public String convert(Experiencia experiencia) {
                return new StringBuilder().append(experiencia.getNombre_empresa()).append(' ').append(experiencia.getFecha_inicio()).append(' ').append(experiencia.getFecha_fin()).toString();
            }
        };
    }
    
    public Converter<Long, Experiencia> ApplicationConversionServiceFactoryBean.getIdToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Experiencia>() {
            public es.uca.iw.domain.Experiencia convert(java.lang.Long id) {
                return Experiencia.findExperiencia(id);
            }
        };
    }
    
    public Converter<String, Experiencia> ApplicationConversionServiceFactoryBean.getStringToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Experiencia>() {
            public es.uca.iw.domain.Experiencia convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Experiencia.class);
            }
        };
    }
    
    public Converter<Idiomas, String> ApplicationConversionServiceFactoryBean.getIdiomasToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Idiomas, java.lang.String>() {
            public String convert(Idiomas idiomas) {
                return new StringBuilder().append(idiomas.getNombre_titulo()).append(' ').append(idiomas.getDescripcion()).append(' ').append(idiomas.getEntidad_emisora()).append(' ').append(idiomas.getNivel()).toString();
            }
        };
    }
    
    public Converter<Long, Idiomas> ApplicationConversionServiceFactoryBean.getIdToIdiomasConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Idiomas>() {
            public es.uca.iw.domain.Idiomas convert(java.lang.Long id) {
                return Idiomas.findIdiomas(id);
            }
        };
    }
    
    public Converter<String, Idiomas> ApplicationConversionServiceFactoryBean.getStringToIdiomasConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Idiomas>() {
            public es.uca.iw.domain.Idiomas convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Idiomas.class);
            }
        };
    }
    
    public Converter<Oferta, String> ApplicationConversionServiceFactoryBean.getOfertaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Oferta, java.lang.String>() {
            public String convert(Oferta oferta) {
                return new StringBuilder().append(oferta.getNombre()).append(' ').append(oferta.getInformacion()).append(' ').append(oferta.getFecha_inicio()).append(' ').append(oferta.getFecha_fin()).toString();
            }
        };
    }
    
    public Converter<Long, Oferta> ApplicationConversionServiceFactoryBean.getIdToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Oferta>() {
            public es.uca.iw.domain.Oferta convert(java.lang.Long id) {
                return Oferta.findOferta(id);
            }
        };
    }
    
    public Converter<String, Oferta> ApplicationConversionServiceFactoryBean.getStringToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Oferta>() {
            public es.uca.iw.domain.Oferta convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Oferta.class);
            }
        };
    }
    
    public Converter<PeticionOferta, String> ApplicationConversionServiceFactoryBean.getPeticionOfertaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.PeticionOferta, java.lang.String>() {
            public String convert(PeticionOferta peticionOferta) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, PeticionOferta> ApplicationConversionServiceFactoryBean.getIdToPeticionOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.PeticionOferta>() {
            public es.uca.iw.domain.PeticionOferta convert(java.lang.Long id) {
                return PeticionOferta.findPeticionOferta(id);
            }
        };
    }
    
    public Converter<String, PeticionOferta> ApplicationConversionServiceFactoryBean.getStringToPeticionOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.PeticionOferta>() {
            public es.uca.iw.domain.PeticionOferta convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PeticionOferta.class);
            }
        };
    }
    
    public Converter<PuestoTrabajo, String> ApplicationConversionServiceFactoryBean.getPuestoTrabajoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.PuestoTrabajo, java.lang.String>() {
            public String convert(PuestoTrabajo puestoTrabajo) {
                return new StringBuilder().append(puestoTrabajo.getNombre()).append(' ').append(puestoTrabajo.getDescripcion()).toString();
            }
        };
    }
    
    public Converter<Long, PuestoTrabajo> ApplicationConversionServiceFactoryBean.getIdToPuestoTrabajoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.PuestoTrabajo>() {
            public es.uca.iw.domain.PuestoTrabajo convert(java.lang.Long id) {
                return PuestoTrabajo.findPuestoTrabajo(id);
            }
        };
    }
    
    public Converter<String, PuestoTrabajo> ApplicationConversionServiceFactoryBean.getStringToPuestoTrabajoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.PuestoTrabajo>() {
            public es.uca.iw.domain.PuestoTrabajo convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PuestoTrabajo.class);
            }
        };
    }
    
    public Converter<Titulos, String> ApplicationConversionServiceFactoryBean.getTitulosToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Titulos, java.lang.String>() {
            public String convert(Titulos titulos) {
                return new StringBuilder().append(titulos.getNombre()).append(' ').append(titulos.getEntidad_emisora()).append(' ').append(titulos.getDescripcion()).append(' ').append(titulos.getFecha_obtencion()).toString();
            }
        };
    }
    
    public Converter<Long, Titulos> ApplicationConversionServiceFactoryBean.getIdToTitulosConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Titulos>() {
            public es.uca.iw.domain.Titulos convert(java.lang.Long id) {
                return Titulos.findTitulos(id);
            }
        };
    }
    
    public Converter<String, Titulos> ApplicationConversionServiceFactoryBean.getStringToTitulosConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Titulos>() {
            public es.uca.iw.domain.Titulos convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Titulos.class);
            }
        };
    }
    
    public Converter<Usuario, String> ApplicationConversionServiceFactoryBean.getUsuarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Usuario, java.lang.String>() {
            public String convert(Usuario usuario) {
                return new StringBuilder().append(usuario.getNombre()).append(' ').append(usuario.getApellidos()).append(' ').append(usuario.getEmail()).append(' ').append(usuario.getDni()).toString();
            }
        };
    }
    
    public Converter<Long, Usuario> ApplicationConversionServiceFactoryBean.getIdToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Usuario>() {
            public es.uca.iw.domain.Usuario convert(java.lang.Long id) {
                return Usuario.findUsuario(id);
            }
        };
    }
    
    public Converter<String, Usuario> ApplicationConversionServiceFactoryBean.getStringToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Usuario>() {
            public es.uca.iw.domain.Usuario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Usuario.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCursosToStringConverter());
        registry.addConverter(getIdToCursosConverter());
        registry.addConverter(getStringToCursosConverter());
        registry.addConverter(getCvToStringConverter());
        registry.addConverter(getIdToCvConverter());
        registry.addConverter(getStringToCvConverter());
        registry.addConverter(getEmpresaToStringConverter());
        registry.addConverter(getIdToEmpresaConverter());
        registry.addConverter(getStringToEmpresaConverter());
        registry.addConverter(getExperienciaToStringConverter());
        registry.addConverter(getIdToExperienciaConverter());
        registry.addConverter(getStringToExperienciaConverter());
        registry.addConverter(getIdiomasToStringConverter());
        registry.addConverter(getIdToIdiomasConverter());
        registry.addConverter(getStringToIdiomasConverter());
        registry.addConverter(getOfertaToStringConverter());
        registry.addConverter(getIdToOfertaConverter());
        registry.addConverter(getStringToOfertaConverter());
        registry.addConverter(getPeticionOfertaToStringConverter());
        registry.addConverter(getIdToPeticionOfertaConverter());
        registry.addConverter(getStringToPeticionOfertaConverter());
        registry.addConverter(getPuestoTrabajoToStringConverter());
        registry.addConverter(getIdToPuestoTrabajoConverter());
        registry.addConverter(getStringToPuestoTrabajoConverter());
        registry.addConverter(getTitulosToStringConverter());
        registry.addConverter(getIdToTitulosConverter());
        registry.addConverter(getStringToTitulosConverter());
        registry.addConverter(getUsuarioToStringConverter());
        registry.addConverter(getIdToUsuarioConverter());
        registry.addConverter(getStringToUsuarioConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
