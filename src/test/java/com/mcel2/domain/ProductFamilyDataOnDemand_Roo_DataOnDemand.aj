// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ProductFamily;
import com.mcel2.domain.ProductFamilyDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ProductFamilyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ProductFamilyDataOnDemand: @Component;
    
    private Random ProductFamilyDataOnDemand.rnd = new SecureRandom();
    
    private List<ProductFamily> ProductFamilyDataOnDemand.data;
    
    public ProductFamily ProductFamilyDataOnDemand.getNewTransientProductFamily(int index) {
        ProductFamily obj = new ProductFamily();
        setName(obj, index);
        return obj;
    }
    
    public void ProductFamilyDataOnDemand.setName(ProductFamily obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public ProductFamily ProductFamilyDataOnDemand.getSpecificProductFamily(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ProductFamily obj = data.get(index);
        Long id = obj.getId();
        return ProductFamily.findProductFamily(id);
    }
    
    public ProductFamily ProductFamilyDataOnDemand.getRandomProductFamily() {
        init();
        ProductFamily obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ProductFamily.findProductFamily(id);
    }
    
    public boolean ProductFamilyDataOnDemand.modifyProductFamily(ProductFamily obj) {
        return false;
    }
    
    public void ProductFamilyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ProductFamily.findProductFamilyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ProductFamily' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ProductFamily>();
        for (int i = 0; i < 10; i++) {
            ProductFamily obj = getNewTransientProductFamily(i);
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
