package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class UserProfile {

    /**
     */
    @NotNull
    @Column(unique = true)
    private String userName;

    /**
     */
    @NotNull
    private String firstName;

    /**
     */
    @NotNull
    private String lastNames;

    /**
     */
    @NotNull
    private String password;
}
