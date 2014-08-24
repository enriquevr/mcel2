package com.mcel2.web;
import com.mcel2.domain.ServiceOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/serviceorders")
@Controller
@RooWebScaffold(path = "serviceorders", formBackingObject = ServiceOrder.class)
public class ServiceOrderController {
}
