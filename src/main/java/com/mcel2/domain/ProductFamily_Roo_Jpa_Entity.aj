// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ProductFamily;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ProductFamily_Roo_Jpa_Entity {
    
    declare @type: ProductFamily: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ProductFamily.id;
    
    @Version
    @Column(name = "version")
    private Integer ProductFamily.version;
    
    public Long ProductFamily.getId() {
        return this.id;
    }
    
    public void ProductFamily.setId(Long id) {
        this.id = id;
    }
    
    public Integer ProductFamily.getVersion() {
        return this.version;
    }
    
    public void ProductFamily.setVersion(Integer version) {
        this.version = version;
    }
    
}
