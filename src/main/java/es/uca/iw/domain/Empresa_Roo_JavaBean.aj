// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Empresa;
import es.uca.iw.domain.Oferta;
import java.util.Set;

privileged aspect Empresa_Roo_JavaBean {
    
    public String Empresa.getNombre() {
        return this.nombre;
    }
    
    public void Empresa.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Empresa.getCif() {
        return this.cif;
    }
    
    public void Empresa.setCif(String cif) {
        this.cif = cif;
    }
    
    public String Empresa.getActividad_profesional() {
        return this.actividad_profesional;
    }
    
    public void Empresa.setActividad_profesional(String actividad_profesional) {
        this.actividad_profesional = actividad_profesional;
    }
    
    public Integer Empresa.getNumero_empleados() {
        return this.numero_empleados;
    }
    
    public void Empresa.setNumero_empleados(Integer numero_empleados) {
        this.numero_empleados = numero_empleados;
    }
    
    public Integer Empresa.getTelefono() {
        return this.telefono;
    }
    
    public void Empresa.setTelefono(Integer telefono) {
        this.telefono = telefono;
    }
    
    public String Empresa.getWeb() {
        return this.web;
    }
    
    public void Empresa.setWeb(String web) {
        this.web = web;
    }
    
    public String Empresa.getDireccion() {
        return this.direccion;
    }
    
    public void Empresa.setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public Set<Oferta> Empresa.getOfertas() {
        return this.ofertas;
    }
    
    public void Empresa.setOfertas(Set<Oferta> ofertas) {
        this.ofertas = ofertas;
    }
    
}