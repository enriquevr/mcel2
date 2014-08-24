// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.PossibleFailures;
import com.mcel2.domain.PossibleFailuresDataOnDemand;
import com.mcel2.domain.PossibleFailuresTypeDataOnDemand;
import com.mcel2.domain.ProductSubFamilyDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PossibleFailuresDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PossibleFailuresDataOnDemand: @Component;
    
    private Random PossibleFailuresDataOnDemand.rnd = new SecureRandom();
    
    private List<PossibleFailures> PossibleFailuresDataOnDemand.data;
    
    @Autowired
    PossibleFailuresTypeDataOnDemand PossibleFailuresDataOnDemand.possibleFailuresTypeDataOnDemand;
    
    @Autowired
    ProductSubFamilyDataOnDemand PossibleFailuresDataOnDemand.productSubFamilyDataOnDemand;
    
    public PossibleFailures PossibleFailuresDataOnDemand.getNewTransientPossibleFailures(int index) {
        PossibleFailures obj = new PossibleFailures();
        setDescription(obj, index);
        return obj;
    }
    
    public void PossibleFailuresDataOnDemand.setDescription(PossibleFailures obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public PossibleFailures PossibleFailuresDataOnDemand.getSpecificPossibleFailures(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PossibleFailures obj = data.get(index);
        Long id = obj.getId();
        return PossibleFailures.findPossibleFailures(id);
    }
    
    public PossibleFailures PossibleFailuresDataOnDemand.getRandomPossibleFailures() {
        init();
        PossibleFailures obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PossibleFailures.findPossibleFailures(id);
    }
    
    public boolean PossibleFailuresDataOnDemand.modifyPossibleFailures(PossibleFailures obj) {
        return false;
    }
    
    public void PossibleFailuresDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PossibleFailures.findPossibleFailuresEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PossibleFailures' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PossibleFailures>();
        for (int i = 0; i < 10; i++) {
            PossibleFailures obj = getNewTransientPossibleFailures(i);
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
