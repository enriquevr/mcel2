package com.mcel2.web;
import com.mcel2.domain.ProductCosmeticState;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productcosmeticstates")
@Controller
@RooWebScaffold(path = "productcosmeticstates", formBackingObject = ProductCosmeticState.class)
public class ProductCosmeticStateController {
}
