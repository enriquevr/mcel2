// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ProductCosmeticState;
import com.mcel2.domain.ProductCosmeticStateDataOnDemand;
import com.mcel2.domain.ProductCosmeticStateIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductCosmeticStateIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ProductCosmeticStateIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ProductCosmeticStateIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ProductCosmeticStateIntegrationTest: @Transactional;
    
    @Autowired
    ProductCosmeticStateDataOnDemand ProductCosmeticStateIntegrationTest.dod;
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testCountProductCosmeticStates() {
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", dod.getRandomProductCosmeticState());
        long count = ProductCosmeticState.countProductCosmeticStates();
        Assert.assertTrue("Counter for 'ProductCosmeticState' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testFindProductCosmeticState() {
        ProductCosmeticState obj = dod.getRandomProductCosmeticState();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to provide an identifier", id);
        obj = ProductCosmeticState.findProductCosmeticState(id);
        Assert.assertNotNull("Find method for 'ProductCosmeticState' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'ProductCosmeticState' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testFindAllProductCosmeticStates() {
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", dod.getRandomProductCosmeticState());
        long count = ProductCosmeticState.countProductCosmeticStates();
        Assert.assertTrue("Too expensive to perform a find all test for 'ProductCosmeticState', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<ProductCosmeticState> result = ProductCosmeticState.findAllProductCosmeticStates();
        Assert.assertNotNull("Find all method for 'ProductCosmeticState' illegally returned null", result);
        Assert.assertTrue("Find all method for 'ProductCosmeticState' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testFindProductCosmeticStateEntries() {
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", dod.getRandomProductCosmeticState());
        long count = ProductCosmeticState.countProductCosmeticStates();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<ProductCosmeticState> result = ProductCosmeticState.findProductCosmeticStateEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'ProductCosmeticState' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'ProductCosmeticState' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testFlush() {
        ProductCosmeticState obj = dod.getRandomProductCosmeticState();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to provide an identifier", id);
        obj = ProductCosmeticState.findProductCosmeticState(id);
        Assert.assertNotNull("Find method for 'ProductCosmeticState' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyProductCosmeticState(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'ProductCosmeticState' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testMergeUpdate() {
        ProductCosmeticState obj = dod.getRandomProductCosmeticState();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to provide an identifier", id);
        obj = ProductCosmeticState.findProductCosmeticState(id);
        boolean modified =  dod.modifyProductCosmeticState(obj);
        Integer currentVersion = obj.getVersion();
        ProductCosmeticState merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'ProductCosmeticState' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", dod.getRandomProductCosmeticState());
        ProductCosmeticState obj = dod.getNewTransientProductCosmeticState(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'ProductCosmeticState' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'ProductCosmeticState' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ProductCosmeticStateIntegrationTest.testRemove() {
        ProductCosmeticState obj = dod.getRandomProductCosmeticState();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ProductCosmeticState' failed to provide an identifier", id);
        obj = ProductCosmeticState.findProductCosmeticState(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'ProductCosmeticState' with identifier '" + id + "'", ProductCosmeticState.findProductCosmeticState(id));
    }
    
}