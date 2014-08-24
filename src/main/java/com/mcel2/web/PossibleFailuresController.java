package com.mcel2.web;
import com.mcel2.domain.PossibleFailures;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/possiblefailureses")
@Controller
@RooWebScaffold(path = "possiblefailureses", formBackingObject = PossibleFailures.class)
public class PossibleFailuresController {
}
