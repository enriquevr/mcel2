// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.PossibleFailures;
import com.mcel2.domain.PossibleFailuresType;
import com.mcel2.domain.ProductSubFamily;

privileged aspect PossibleFailures_Roo_JavaBean {
    
    public String PossibleFailures.getDescription() {
        return this.description;
    }
    
    public void PossibleFailures.setDescription(String description) {
        this.description = description;
    }
    
    public PossibleFailuresType PossibleFailures.getFailureType() {
        return this.failureType;
    }
    
    public void PossibleFailures.setFailureType(PossibleFailuresType failureType) {
        this.failureType = failureType;
    }
    
    public ProductSubFamily PossibleFailures.getSubfamily() {
        return this.subfamily;
    }
    
    public void PossibleFailures.setSubfamily(ProductSubFamily subfamily) {
        this.subfamily = subfamily;
    }
    
}
