package com.mcel2.web;
import com.mcel2.domain.PossibleFailuresType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/possiblefailurestypes")
@Controller
@RooWebScaffold(path = "possiblefailurestypes", formBackingObject = PossibleFailuresType.class)
public class PossibleFailuresTypeController {
}
