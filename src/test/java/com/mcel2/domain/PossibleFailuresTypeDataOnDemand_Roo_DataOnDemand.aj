// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.PossibleFailuresType;
import com.mcel2.domain.PossibleFailuresTypeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect PossibleFailuresTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PossibleFailuresTypeDataOnDemand: @Component;
    
    private Random PossibleFailuresTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<PossibleFailuresType> PossibleFailuresTypeDataOnDemand.data;
    
    public PossibleFailuresType PossibleFailuresTypeDataOnDemand.getNewTransientPossibleFailuresType(int index) {
        PossibleFailuresType obj = new PossibleFailuresType();
        setDescription(obj, index);
        return obj;
    }
    
    public void PossibleFailuresTypeDataOnDemand.setDescription(PossibleFailuresType obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public PossibleFailuresType PossibleFailuresTypeDataOnDemand.getSpecificPossibleFailuresType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PossibleFailuresType obj = data.get(index);
        Long id = obj.getId();
        return PossibleFailuresType.findPossibleFailuresType(id);
    }
    
    public PossibleFailuresType PossibleFailuresTypeDataOnDemand.getRandomPossibleFailuresType() {
        init();
        PossibleFailuresType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PossibleFailuresType.findPossibleFailuresType(id);
    }
    
    public boolean PossibleFailuresTypeDataOnDemand.modifyPossibleFailuresType(PossibleFailuresType obj) {
        return false;
    }
    
    public void PossibleFailuresTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PossibleFailuresType.findPossibleFailuresTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PossibleFailuresType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PossibleFailuresType>();
        for (int i = 0; i < 10; i++) {
            PossibleFailuresType obj = getNewTransientPossibleFailuresType(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
