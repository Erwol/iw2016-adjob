// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Cursos;
import es.uca.iw.domain.Usuario;
import java.util.Date;

privileged aspect Cursos_Roo_JavaBean {
    
    public String Cursos.getNombre() {
        return this.nombre;
    }
    
    public void Cursos.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Cursos.getNombre_academia() {
        return this.nombre_academia;
    }
    
    public void Cursos.setNombre_academia(String nombre_academia) {
        this.nombre_academia = nombre_academia;
    }
    
    public String Cursos.getDescripcion() {
        return this.descripcion;
    }
    
    public void Cursos.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Date Cursos.getFecha_inicio() {
        return this.fecha_inicio;
    }
    
    public void Cursos.setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }
    
    public Date Cursos.getFecha_fin() {
        return this.fecha_fin;
    }
    
    public void Cursos.setFecha_fin(Date fecha_fin) {
        this.fecha_fin = fecha_fin;
    }
    
    public Usuario Cursos.getUsuario() {
        return this.usuario;
    }
    
    public void Cursos.setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
}
