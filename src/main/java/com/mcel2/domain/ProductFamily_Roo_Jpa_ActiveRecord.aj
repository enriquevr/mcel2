// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ProductFamily;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductFamily_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ProductFamily.entityManager;
    
    public static final List<String> ProductFamily.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name");
    
    public static final EntityManager ProductFamily.entityManager() {
        EntityManager em = new ProductFamily().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ProductFamily.countProductFamilys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ProductFamily o", Long.class).getSingleResult();
    }
    
    public static List<ProductFamily> ProductFamily.findAllProductFamilys() {
        return entityManager().createQuery("SELECT o FROM ProductFamily o", ProductFamily.class).getResultList();
    }
    
    public static List<ProductFamily> ProductFamily.findAllProductFamilys(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProductFamily o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProductFamily.class).getResultList();
    }
    
    public static ProductFamily ProductFamily.findProductFamily(Long id) {
        if (id == null) return null;
        return entityManager().find(ProductFamily.class, id);
    }
    
    public static List<ProductFamily> ProductFamily.findProductFamilyEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ProductFamily o", ProductFamily.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ProductFamily> ProductFamily.findProductFamilyEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProductFamily o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProductFamily.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ProductFamily.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ProductFamily.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ProductFamily attached = ProductFamily.findProductFamily(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ProductFamily.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ProductFamily.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ProductFamily ProductFamily.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ProductFamily merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}