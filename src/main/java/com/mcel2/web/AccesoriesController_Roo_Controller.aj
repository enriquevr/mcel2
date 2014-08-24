// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.web;

import com.mcel2.domain.Accesories;
import com.mcel2.web.AccesoriesController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect AccesoriesController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String AccesoriesController.create(@Valid Accesories accesories, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, accesories);
            return "accesorieses/create";
        }
        uiModel.asMap().clear();
        accesories.persist();
        return "redirect:/accesorieses/" + encodeUrlPathSegment(accesories.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String AccesoriesController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Accesories());
        return "accesorieses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String AccesoriesController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("accesories", Accesories.findAccesories(id));
        uiModel.addAttribute("itemId", id);
        return "accesorieses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String AccesoriesController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("accesorieses", Accesories.findAccesoriesEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Accesories.countAccesorieses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("accesorieses", Accesories.findAllAccesorieses(sortFieldName, sortOrder));
        }
        return "accesorieses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String AccesoriesController.update(@Valid Accesories accesories, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, accesories);
            return "accesorieses/update";
        }
        uiModel.asMap().clear();
        accesories.merge();
        return "redirect:/accesorieses/" + encodeUrlPathSegment(accesories.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String AccesoriesController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Accesories.findAccesories(id));
        return "accesorieses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String AccesoriesController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Accesories accesories = Accesories.findAccesories(id);
        accesories.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/accesorieses";
    }
    
    void AccesoriesController.populateEditForm(Model uiModel, Accesories accesories) {
        uiModel.addAttribute("accesories", accesories);
    }
    
    String AccesoriesController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}