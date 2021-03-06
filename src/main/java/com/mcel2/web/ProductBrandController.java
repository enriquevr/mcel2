package com.mcel2.web;
import com.mcel2.domain.ProductBrand;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productbrands")
@Controller
@RooWebScaffold(path = "productbrands", formBackingObject = ProductBrand.class)
public class ProductBrandController {
}
