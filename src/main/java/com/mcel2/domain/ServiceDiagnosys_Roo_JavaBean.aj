// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.DiagnosisItems;
import com.mcel2.domain.DiagnosisType;
import com.mcel2.domain.DiagnosysServices;
import com.mcel2.domain.ServiceDiagnosys;
import com.mcel2.domain.ServiceOrder;
import java.util.Set;

privileged aspect ServiceDiagnosys_Roo_JavaBean {
    
    public ServiceOrder ServiceDiagnosys.getServiceOrder() {
        return this.serviceOrder;
    }
    
    public void ServiceDiagnosys.setServiceOrder(ServiceOrder serviceOrder) {
        this.serviceOrder = serviceOrder;
    }
    
    public Set<DiagnosisType> ServiceDiagnosys.getDiagnoses() {
        return this.diagnoses;
    }
    
    public void ServiceDiagnosys.setDiagnoses(Set<DiagnosisType> diagnoses) {
        this.diagnoses = diagnoses;
    }
    
    public Set<DiagnosysServices> ServiceDiagnosys.getServices() {
        return this.services;
    }
    
    public void ServiceDiagnosys.setServices(Set<DiagnosysServices> services) {
        this.services = services;
    }
    
    public Set<DiagnosisItems> ServiceDiagnosys.getItems() {
        return this.items;
    }
    
    public void ServiceDiagnosys.setItems(Set<DiagnosisItems> items) {
        this.items = items;
    }
    
}
