// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.Contract;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Contract_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Contract.entityManager;
    
    public static final List<String> Contract.fieldNames4OrderClauseFilter = java.util.Arrays.asList("serialNumber");
    
    public static final EntityManager Contract.entityManager() {
        EntityManager em = new Contract().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Contract.countContracts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Contract o", Long.class).getSingleResult();
    }
    
    public static List<Contract> Contract.findAllContracts() {
        return entityManager().createQuery("SELECT o FROM Contract o", Contract.class).getResultList();
    }
    
    public static List<Contract> Contract.findAllContracts(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Contract o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Contract.class).getResultList();
    }
    
    public static Contract Contract.findContract(Long id) {
        if (id == null) return null;
        return entityManager().find(Contract.class, id);
    }
    
    public static List<Contract> Contract.findContractEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Contract o", Contract.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Contract> Contract.findContractEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Contract o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Contract.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Contract.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Contract.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Contract attached = Contract.findContract(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Contract.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Contract.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Contract Contract.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Contract merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
