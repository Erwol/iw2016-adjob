// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Usuario_Roo_Finder {
    
    public static Long Usuario.countFindUsuariosByEmailAndContrasenaEquals(String email, String contrasena) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        if (contrasena == null || contrasena.length() == 0) throw new IllegalArgumentException("The contrasena argument is required");
        EntityManager em = Usuario.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Usuario AS o WHERE o.email = :email AND o.contrasena = :contrasena", Long.class);
        q.setParameter("email", email);
        q.setParameter("contrasena", contrasena);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Usuario> Usuario.findUsuariosByEmailAndContrasenaEquals(String email, String contrasena) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        if (contrasena == null || contrasena.length() == 0) throw new IllegalArgumentException("The contrasena argument is required");
        EntityManager em = Usuario.entityManager();
        TypedQuery<Usuario> q = em.createQuery("SELECT o FROM Usuario AS o WHERE o.email = :email AND o.contrasena = :contrasena", Usuario.class);
        q.setParameter("email", email);
        q.setParameter("contrasena", contrasena);
        return q;
    }
    
    public static TypedQuery<Usuario> Usuario.findUsuariosByEmailAndContrasenaEquals(String email, String contrasena, String sortFieldName, String sortOrder) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        if (contrasena == null || contrasena.length() == 0) throw new IllegalArgumentException("The contrasena argument is required");
        EntityManager em = Usuario.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Usuario AS o WHERE o.email = :email AND o.contrasena = :contrasena");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Usuario> q = em.createQuery(queryBuilder.toString(), Usuario.class);
        q.setParameter("email", email);
        q.setParameter("contrasena", contrasena);
        return q;
    }
    
}
