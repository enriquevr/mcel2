// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.UserType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect UserType_Roo_Jpa_Entity {
    
    declare @type: UserType: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserType.id;
    
    @Version
    @Column(name = "version")
    private Integer UserType.version;
    
    public Long UserType.getId() {
        return this.id;
    }
    
    public void UserType.setId(Long id) {
        this.id = id;
    }
    
    public Integer UserType.getVersion() {
        return this.version;
    }
    
    public void UserType.setVersion(Integer version) {
        this.version = version;
    }
    
}
