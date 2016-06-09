// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Cv;
import es.uca.iw.domain.Oferta;
import es.uca.iw.domain.PeticionOferta;
import es.uca.iw.domain.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect PeticionOferta_Roo_Finder {
    
    public static Long PeticionOferta.countFindPeticionOfertasByCurriculum(Cv curriculum) {
        if (curriculum == null) throw new IllegalArgumentException("The curriculum argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PeticionOferta AS o WHERE o.curriculum = :curriculum", Long.class);
        q.setParameter("curriculum", curriculum);
        return ((Long) q.getSingleResult());
    }
    
    public static Long PeticionOferta.countFindPeticionOfertasByOferta(Oferta oferta) {
        if (oferta == null) throw new IllegalArgumentException("The oferta argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PeticionOferta AS o WHERE o.oferta = :oferta", Long.class);
        q.setParameter("oferta", oferta);
        return ((Long) q.getSingleResult());
    }
    
    public static Long PeticionOferta.countFindPeticionOfertasByUsuario_demandante(Usuario usuario_demandante) {
        if (usuario_demandante == null) throw new IllegalArgumentException("The usuario_demandante argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PeticionOferta AS o WHERE o.usuario_demandante = :usuario_demandante", Long.class);
        q.setParameter("usuario_demandante", usuario_demandante);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByCurriculum(Cv curriculum) {
        if (curriculum == null) throw new IllegalArgumentException("The curriculum argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery<PeticionOferta> q = em.createQuery("SELECT o FROM PeticionOferta AS o WHERE o.curriculum = :curriculum", PeticionOferta.class);
        q.setParameter("curriculum", curriculum);
        return q;
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByCurriculum(Cv curriculum, String sortFieldName, String sortOrder) {
        if (curriculum == null) throw new IllegalArgumentException("The curriculum argument is required");
        EntityManager em = PeticionOferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM PeticionOferta AS o WHERE o.curriculum = :curriculum");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<PeticionOferta> q = em.createQuery(queryBuilder.toString(), PeticionOferta.class);
        q.setParameter("curriculum", curriculum);
        return q;
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByOferta(Oferta oferta) {
        if (oferta == null) throw new IllegalArgumentException("The oferta argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery<PeticionOferta> q = em.createQuery("SELECT o FROM PeticionOferta AS o WHERE o.oferta = :oferta", PeticionOferta.class);
        q.setParameter("oferta", oferta);
        return q;
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByOferta(Oferta oferta, String sortFieldName, String sortOrder) {
        if (oferta == null) throw new IllegalArgumentException("The oferta argument is required");
        EntityManager em = PeticionOferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM PeticionOferta AS o WHERE o.oferta = :oferta");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<PeticionOferta> q = em.createQuery(queryBuilder.toString(), PeticionOferta.class);
        q.setParameter("oferta", oferta);
        return q;
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByUsuario_demandante(Usuario usuario_demandante) {
        if (usuario_demandante == null) throw new IllegalArgumentException("The usuario_demandante argument is required");
        EntityManager em = PeticionOferta.entityManager();
        TypedQuery<PeticionOferta> q = em.createQuery("SELECT o FROM PeticionOferta AS o WHERE o.usuario_demandante = :usuario_demandante", PeticionOferta.class);
        q.setParameter("usuario_demandante", usuario_demandante);
        return q;
    }
    
    public static TypedQuery<PeticionOferta> PeticionOferta.findPeticionOfertasByUsuario_demandante(Usuario usuario_demandante, String sortFieldName, String sortOrder) {
        if (usuario_demandante == null) throw new IllegalArgumentException("The usuario_demandante argument is required");
        EntityManager em = PeticionOferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM PeticionOferta AS o WHERE o.usuario_demandante = :usuario_demandante");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<PeticionOferta> q = em.createQuery(queryBuilder.toString(), PeticionOferta.class);
        q.setParameter("usuario_demandante", usuario_demandante);
        return q;
    }
    
}
