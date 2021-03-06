// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Titulos;
import es.uca.iw.domain.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Titulos_Roo_Finder {
    
    public static Long Titulos.countFindTitulosesByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Titulos.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Titulos AS o WHERE o.usuario = :usuario", Long.class);
        q.setParameter("usuario", usuario);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Titulos> Titulos.findTitulosesByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Titulos.entityManager();
        TypedQuery<Titulos> q = em.createQuery("SELECT o FROM Titulos AS o WHERE o.usuario = :usuario", Titulos.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
    public static TypedQuery<Titulos> Titulos.findTitulosesByUsuario(Usuario usuario, String sortFieldName, String sortOrder) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Titulos.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Titulos AS o WHERE o.usuario = :usuario");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Titulos> q = em.createQuery(queryBuilder.toString(), Titulos.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
}
