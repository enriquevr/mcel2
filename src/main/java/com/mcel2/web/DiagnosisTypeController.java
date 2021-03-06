package com.mcel2.web;
import com.mcel2.domain.DiagnosisType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/diagnosistypes")
@Controller
@RooWebScaffold(path = "diagnosistypes", formBackingObject = DiagnosisType.class)
public class DiagnosisTypeController {
}
