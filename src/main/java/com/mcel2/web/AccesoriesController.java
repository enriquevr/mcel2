package com.mcel2.web;
import com.mcel2.domain.Accesories;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/accesorieses")
@Controller
@RooWebScaffold(path = "accesorieses", formBackingObject = Accesories.class)
public class AccesoriesController {
}
