package com.mcel2.web;
import com.mcel2.domain.UserType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/usertypes")
@Controller
@RooWebScaffold(path = "usertypes", formBackingObject = UserType.class)
public class UserTypeController {
}
