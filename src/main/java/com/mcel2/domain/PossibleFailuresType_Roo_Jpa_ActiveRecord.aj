// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.PossibleFailuresType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PossibleFailuresType_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PossibleFailuresType.entityManager;
    
    public static final List<String> PossibleFailuresType.fieldNames4OrderClauseFilter = java.util.Arrays.asList("description");
    
    public static final EntityManager PossibleFailuresType.entityManager() {
        EntityManager em = new PossibleFailuresType().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PossibleFailuresType.countPossibleFailuresTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PossibleFailuresType o", Long.class).getSingleResult();
    }
    
    public static List<PossibleFailuresType> PossibleFailuresType.findAllPossibleFailuresTypes() {
        return entityManager().createQuery("SELECT o FROM PossibleFailuresType o", PossibleFailuresType.class).getResultList();
    }
    
    public static List<PossibleFailuresType> PossibleFailuresType.findAllPossibleFailuresTypes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PossibleFailuresType o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PossibleFailuresType.class).getResultList();
    }
    
    public static PossibleFailuresType PossibleFailuresType.findPossibleFailuresType(Long id) {
        if (id == null) return null;
        return entityManager().find(PossibleFailuresType.class, id);
    }
    
    public static List<PossibleFailuresType> PossibleFailuresType.findPossibleFailuresTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PossibleFailuresType o", PossibleFailuresType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PossibleFailuresType> PossibleFailuresType.findPossibleFailuresTypeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PossibleFailuresType o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PossibleFailuresType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PossibleFailuresType.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PossibleFailuresType.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PossibleFailuresType attached = PossibleFailuresType.findPossibleFailuresType(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PossibleFailuresType.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PossibleFailuresType.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PossibleFailuresType PossibleFailuresType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PossibleFailuresType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
