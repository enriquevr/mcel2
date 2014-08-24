package com.mcel2.web;
import com.mcel2.domain.Failures;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/failureses")
@Controller
@RooWebScaffold(path = "failureses", formBackingObject = Failures.class)
public class FailuresController {
}
