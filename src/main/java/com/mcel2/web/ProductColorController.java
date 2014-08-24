package com.mcel2.web;
import com.mcel2.domain.ProductColor;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productcolors")
@Controller
@RooWebScaffold(path = "productcolors", formBackingObject = ProductColor.class)
public class ProductColorController {
}
