// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.PeticionOferta;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PeticionOferta_Roo_Jpa_Entity {
    
    declare @type: PeticionOferta: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PeticionOferta.id;
    
    @Version
    @Column(name = "version")
    private Integer PeticionOferta.version;
    
    public Long PeticionOferta.getId() {
        return this.id;
    }
    
    public void PeticionOferta.setId(Long id) {
        this.id = id;
    }
    
    public Integer PeticionOferta.getVersion() {
        return this.version;
    }
    
    public void PeticionOferta.setVersion(Integer version) {
        this.version = version;
    }
    
}