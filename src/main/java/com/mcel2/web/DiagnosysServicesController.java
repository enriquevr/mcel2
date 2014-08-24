package com.mcel2.web;
import com.mcel2.domain.DiagnosysServices;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/diagnosysserviceses")
@Controller
@RooWebScaffold(path = "diagnosysserviceses", formBackingObject = DiagnosysServices.class)
public class DiagnosysServicesController {
}
