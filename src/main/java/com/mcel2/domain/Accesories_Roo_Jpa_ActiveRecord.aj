// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.Accesories;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Accesories_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Accesories.entityManager;
    
    public static final List<String> Accesories.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name");
    
    public static final EntityManager Accesories.entityManager() {
        EntityManager em = new Accesories().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Accesories.countAccesorieses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Accesories o", Long.class).getSingleResult();
    }
    
    public static List<Accesories> Accesories.findAllAccesorieses() {
        return entityManager().createQuery("SELECT o FROM Accesories o", Accesories.class).getResultList();
    }
    
    public static List<Accesories> Accesories.findAllAccesorieses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Accesories o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Accesories.class).getResultList();
    }
    
    public static Accesories Accesories.findAccesories(Long id) {
        if (id == null) return null;
        return entityManager().find(Accesories.class, id);
    }
    
    public static List<Accesories> Accesories.findAccesoriesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Accesories o", Accesories.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Accesories> Accesories.findAccesoriesEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Accesories o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Accesories.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Accesories.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Accesories.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Accesories attached = Accesories.findAccesories(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Accesories.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Accesories.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Accesories Accesories.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Accesories merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
