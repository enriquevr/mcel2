package com.mcel2.web;
import com.mcel2.domain.Accer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/accers")
@Controller
@RooWebScaffold(path = "accers", formBackingObject = Accer.class)
public class AccerController {
}
