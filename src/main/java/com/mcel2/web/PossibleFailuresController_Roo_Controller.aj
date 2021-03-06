// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.web;

import com.mcel2.domain.PossibleFailures;
import com.mcel2.domain.PossibleFailuresType;
import com.mcel2.domain.ProductSubFamily;
import com.mcel2.web.PossibleFailuresController;
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

privileged aspect PossibleFailuresController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PossibleFailuresController.create(@Valid PossibleFailures possibleFailures, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, possibleFailures);
            return "possiblefailureses/create";
        }
        uiModel.asMap().clear();
        possibleFailures.persist();
        return "redirect:/possiblefailureses/" + encodeUrlPathSegment(possibleFailures.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PossibleFailuresController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PossibleFailures());
        return "possiblefailureses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PossibleFailuresController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("possiblefailures", PossibleFailures.findPossibleFailures(id));
        uiModel.addAttribute("itemId", id);
        return "possiblefailureses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PossibleFailuresController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("possiblefailureses", PossibleFailures.findPossibleFailuresEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) PossibleFailures.countPossibleFailureses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("possiblefailureses", PossibleFailures.findAllPossibleFailureses(sortFieldName, sortOrder));
        }
        return "possiblefailureses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PossibleFailuresController.update(@Valid PossibleFailures possibleFailures, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, possibleFailures);
            return "possiblefailureses/update";
        }
        uiModel.asMap().clear();
        possibleFailures.merge();
        return "redirect:/possiblefailureses/" + encodeUrlPathSegment(possibleFailures.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PossibleFailuresController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, PossibleFailures.findPossibleFailures(id));
        return "possiblefailureses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PossibleFailuresController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PossibleFailures possibleFailures = PossibleFailures.findPossibleFailures(id);
        possibleFailures.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/possiblefailureses";
    }
    
    void PossibleFailuresController.populateEditForm(Model uiModel, PossibleFailures possibleFailures) {
        uiModel.addAttribute("possibleFailures", possibleFailures);
        uiModel.addAttribute("possiblefailurestypes", PossibleFailuresType.findAllPossibleFailuresTypes());
        uiModel.addAttribute("productsubfamilys", ProductSubFamily.findAllProductSubFamilys());
    }
    
    String PossibleFailuresController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
