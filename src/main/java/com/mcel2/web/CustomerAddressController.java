package com.mcel2.web;
import com.mcel2.domain.CustomerAddress;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customeraddresses")
@Controller
@RooWebScaffold(path = "customeraddresses", formBackingObject = CustomerAddress.class)
public class CustomerAddressController {
}
