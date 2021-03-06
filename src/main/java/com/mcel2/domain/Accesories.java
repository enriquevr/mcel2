package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Accesories {

    /**
     */
    private String name;

    /**
     */
    @ManyToOne
    private ProductSubFamily subfamily;
}
