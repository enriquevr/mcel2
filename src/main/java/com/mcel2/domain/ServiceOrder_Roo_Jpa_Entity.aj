// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ServiceOrder;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ServiceOrder_Roo_Jpa_Entity {
    
    declare @type: ServiceOrder: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ServiceOrder.id;
    
    @Version
    @Column(name = "version")
    private Integer ServiceOrder.version;
    
    public Long ServiceOrder.getId() {
        return this.id;
    }
    
    public void ServiceOrder.setId(Long id) {
        this.id = id;
    }
    
    public Integer ServiceOrder.getVersion() {
        return this.version;
    }
    
    public void ServiceOrder.setVersion(Integer version) {
        this.version = version;
    }
    
}