// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ServiceDiagnosys;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ServiceDiagnosys_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ServiceDiagnosys.entityManager;
    
    public static final List<String> ServiceDiagnosys.fieldNames4OrderClauseFilter = java.util.Arrays.asList("serviceOrder", "diagnoses", "services", "items");
    
    public static final EntityManager ServiceDiagnosys.entityManager() {
        EntityManager em = new ServiceDiagnosys().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ServiceDiagnosys.countServiceDiagnosyses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ServiceDiagnosys o", Long.class).getSingleResult();
    }
    
    public static List<ServiceDiagnosys> ServiceDiagnosys.findAllServiceDiagnosyses() {
        return entityManager().createQuery("SELECT o FROM ServiceDiagnosys o", ServiceDiagnosys.class).getResultList();
    }
    
    public static List<ServiceDiagnosys> ServiceDiagnosys.findAllServiceDiagnosyses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ServiceDiagnosys o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ServiceDiagnosys.class).getResultList();
    }
    
    public static ServiceDiagnosys ServiceDiagnosys.findServiceDiagnosys(Long id) {
        if (id == null) return null;
        return entityManager().find(ServiceDiagnosys.class, id);
    }
    
    public static List<ServiceDiagnosys> ServiceDiagnosys.findServiceDiagnosysEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ServiceDiagnosys o", ServiceDiagnosys.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ServiceDiagnosys> ServiceDiagnosys.findServiceDiagnosysEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ServiceDiagnosys o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ServiceDiagnosys.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ServiceDiagnosys.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ServiceDiagnosys.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ServiceDiagnosys attached = ServiceDiagnosys.findServiceDiagnosys(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ServiceDiagnosys.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ServiceDiagnosys.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ServiceDiagnosys ServiceDiagnosys.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ServiceDiagnosys merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
