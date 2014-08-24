package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class ServiceOrder {

    /**
     */
    @ManyToOne
    private ProductFamily family;

    /**
     */
    @ManyToOne
    private ProductSubFamily subfamily;

    /**
     */
    @ManyToOne
    private ProductBrand brand;

    /**
     */
    @ManyToOne
    private ProductColor color;

    /**
     */
    private String serialNumber;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<PossibleFailures> failures = new HashSet<PossibleFailures>();

    /**
     */
    private String observations;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Accesories> accesories = new HashSet<Accesories>();

    /**
     */
    @ManyToOne
    private Customer customer;

    /**
     */
    @ManyToOne
    private CustomerAddress address;

    /**
     */
    private Boolean homeOrInStoreDelivery;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<ProductCosmeticState> cosmeticState = new HashSet<ProductCosmeticState>();

    /**
     */
    private String frontDeskTicket;
}
