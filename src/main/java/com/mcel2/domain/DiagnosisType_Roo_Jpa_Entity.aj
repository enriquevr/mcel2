// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.DiagnosisType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect DiagnosisType_Roo_Jpa_Entity {
    
    declare @type: DiagnosisType: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DiagnosisType.id;
    
    @Version
    @Column(name = "version")
    private Integer DiagnosisType.version;
    
    public Long DiagnosisType.getId() {
        return this.id;
    }
    
    public void DiagnosisType.setId(Long id) {
        this.id = id;
    }
    
    public Integer DiagnosisType.getVersion() {
        return this.version;
    }
    
    public void DiagnosisType.setVersion(Integer version) {
        this.version = version;
    }
    
}
