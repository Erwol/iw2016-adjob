// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Cursos;
import es.uca.iw.domain.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Cursos_Roo_Finder {
    
    public static Long Cursos.countFindCursosesByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Cursos.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Cursos AS o WHERE o.usuario = :usuario", Long.class);
        q.setParameter("usuario", usuario);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Cursos> Cursos.findCursosesByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Cursos.entityManager();
        TypedQuery<Cursos> q = em.createQuery("SELECT o FROM Cursos AS o WHERE o.usuario = :usuario", Cursos.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
    public static TypedQuery<Cursos> Cursos.findCursosesByUsuario(Usuario usuario, String sortFieldName, String sortOrder) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Cursos.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Cursos AS o WHERE o.usuario = :usuario");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Cursos> q = em.createQuery(queryBuilder.toString(), Cursos.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
}
