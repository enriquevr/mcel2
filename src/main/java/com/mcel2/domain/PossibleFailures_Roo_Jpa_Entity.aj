// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.PossibleFailures;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PossibleFailures_Roo_Jpa_Entity {
    
    declare @type: PossibleFailures: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PossibleFailures.id;
    
    @Version
    @Column(name = "version")
    private Integer PossibleFailures.version;
    
    public Long PossibleFailures.getId() {
        return this.id;
    }
    
    public void PossibleFailures.setId(Long id) {
        this.id = id;
    }
    
    public Integer PossibleFailures.getVersion() {
        return this.version;
    }
    
    public void PossibleFailures.setVersion(Integer version) {
        this.version = version;
    }
    
}
