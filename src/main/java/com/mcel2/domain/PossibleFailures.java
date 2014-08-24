package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PossibleFailures {

    /**
     */
    private String description;

    /**
     */
    @ManyToOne
    private PossibleFailuresType failureType;

    /**
     */
    @ManyToOne
    private ProductSubFamily subfamily;
}
