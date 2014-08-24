package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerAddress {

    /**
     */
    private String street;

    /**
     */
    private String zipCode;

    /**
     */
    private String addressReferences;

    /**
     */
    private String intNumber;

    /**
     */
    private String extNumber;

    /**
     */
    private String countryState;

    /**
     */
    private String delegacion;

    /**
     */
    private String colony;
}
