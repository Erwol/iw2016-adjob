// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Cv;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Cv_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Cv.entityManager;
    
    public static final List<String> Cv.fieldNames4OrderClauseFilter = java.util.Arrays.asList("foto", "trayectoria", "puestos_posibles", "experiencia", "cursos", "idiomas", "titulos", "usuario");
    
    public static final EntityManager Cv.entityManager() {
        EntityManager em = new Cv().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Cv.countCvs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Cv o", Long.class).getSingleResult();
    }
    
    public static List<Cv> Cv.findAllCvs() {
        return entityManager().createQuery("SELECT o FROM Cv o", Cv.class).getResultList();
    }
    
    public static List<Cv> Cv.findAllCvs(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cv o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cv.class).getResultList();
    }
    
    public static Cv Cv.findCv(Long id) {
        if (id == null) return null;
        return entityManager().find(Cv.class, id);
    }
    
    public static List<Cv> Cv.findCvEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Cv o", Cv.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Cv> Cv.findCvEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cv o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cv.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Cv.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Cv.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Cv attached = Cv.findCv(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Cv.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Cv.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Cv Cv.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Cv merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}