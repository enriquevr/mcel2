// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.Contract;
import com.mcel2.domain.ContractDataOnDemand;
import com.mcel2.domain.ContractIntegrationTest;
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

privileged aspect ContractIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ContractIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ContractIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ContractIntegrationTest: @Transactional;
    
    @Autowired
    ContractDataOnDemand ContractIntegrationTest.dod;
    
    @Test
    public void ContractIntegrationTest.testCountContracts() {
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", dod.getRandomContract());
        long count = Contract.countContracts();
        Assert.assertTrue("Counter for 'Contract' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ContractIntegrationTest.testFindContract() {
        Contract obj = dod.getRandomContract();
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Contract' failed to provide an identifier", id);
        obj = Contract.findContract(id);
        Assert.assertNotNull("Find method for 'Contract' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Contract' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ContractIntegrationTest.testFindAllContracts() {
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", dod.getRandomContract());
        long count = Contract.countContracts();
        Assert.assertTrue("Too expensive to perform a find all test for 'Contract', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Contract> result = Contract.findAllContracts();
        Assert.assertNotNull("Find all method for 'Contract' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Contract' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ContractIntegrationTest.testFindContractEntries() {
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", dod.getRandomContract());
        long count = Contract.countContracts();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Contract> result = Contract.findContractEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Contract' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Contract' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ContractIntegrationTest.testFlush() {
        Contract obj = dod.getRandomContract();
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Contract' failed to provide an identifier", id);
        obj = Contract.findContract(id);
        Assert.assertNotNull("Find method for 'Contract' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyContract(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Contract' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ContractIntegrationTest.testMergeUpdate() {
        Contract obj = dod.getRandomContract();
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Contract' failed to provide an identifier", id);
        obj = Contract.findContract(id);
        boolean modified =  dod.modifyContract(obj);
        Integer currentVersion = obj.getVersion();
        Contract merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Contract' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ContractIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", dod.getRandomContract());
        Contract obj = dod.getNewTransientContract(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Contract' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Contract' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Contract' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ContractIntegrationTest.testRemove() {
        Contract obj = dod.getRandomContract();
        Assert.assertNotNull("Data on demand for 'Contract' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Contract' failed to provide an identifier", id);
        obj = Contract.findContract(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Contract' with identifier '" + id + "'", Contract.findContract(id));
    }
    
}
