package com.mcel2.web;
import com.mcel2.domain.DiagnosisItems;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/diagnosisitemses")
@Controller
@RooWebScaffold(path = "diagnosisitemses", formBackingObject = DiagnosisItems.class)
public class DiagnosisItemsController {
}
