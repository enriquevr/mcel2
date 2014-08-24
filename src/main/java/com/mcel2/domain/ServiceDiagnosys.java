package com.mcel2.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.Lob;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class ServiceDiagnosys {

    /**
     */
    @ManyToOne
    private ServiceOrder serviceOrder;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<DiagnosisType> diagnoses = new HashSet<DiagnosisType>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<DiagnosysServices> services = new HashSet<DiagnosysServices>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<DiagnosisItems> items = new HashSet<DiagnosisItems>();

    /**
     */
    @RooUploadedFile(contentType = "application/pdf")
    @Lob
    private byte[] irreparablePdf;

    /**
     */
    @RooUploadedFile(contentType = "image/jpeg")
    @Lob
    private byte[] photos;
}
