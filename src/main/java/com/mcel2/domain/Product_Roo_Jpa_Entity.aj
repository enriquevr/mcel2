// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.Product;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Product_Roo_Jpa_Entity {
    
    declare @type: Product: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Product.id;
    
    @Version
    @Column(name = "version")
    private Integer Product.version;
    
    public Long Product.getId() {
        return this.id;
    }
    
    public void Product.setId(Long id) {
        this.id = id;
    }
    
    public Integer Product.getVersion() {
        return this.version;
    }
    
    public void Product.setVersion(Integer version) {
        this.version = version;
    }
    
}
