// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.web;

import com.mcel2.domain.DiagnosisItems;
import com.mcel2.web.DiagnosisItemsController;
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

privileged aspect DiagnosisItemsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DiagnosisItemsController.create(@Valid DiagnosisItems diagnosisItems, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, diagnosisItems);
            return "diagnosisitemses/create";
        }
        uiModel.asMap().clear();
        diagnosisItems.persist();
        return "redirect:/diagnosisitemses/" + encodeUrlPathSegment(diagnosisItems.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DiagnosisItemsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DiagnosisItems());
        return "diagnosisitemses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DiagnosisItemsController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("diagnosisitems", DiagnosisItems.findDiagnosisItems(id));
        uiModel.addAttribute("itemId", id);
        return "diagnosisitemses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DiagnosisItemsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("diagnosisitemses", DiagnosisItems.findDiagnosisItemsEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DiagnosisItems.countDiagnosisItemses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("diagnosisitemses", DiagnosisItems.findAllDiagnosisItemses(sortFieldName, sortOrder));
        }
        return "diagnosisitemses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DiagnosisItemsController.update(@Valid DiagnosisItems diagnosisItems, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, diagnosisItems);
            return "diagnosisitemses/update";
        }
        uiModel.asMap().clear();
        diagnosisItems.merge();
        return "redirect:/diagnosisitemses/" + encodeUrlPathSegment(diagnosisItems.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DiagnosisItemsController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, DiagnosisItems.findDiagnosisItems(id));
        return "diagnosisitemses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DiagnosisItemsController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DiagnosisItems diagnosisItems = DiagnosisItems.findDiagnosisItems(id);
        diagnosisItems.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/diagnosisitemses";
    }
    
    void DiagnosisItemsController.populateEditForm(Model uiModel, DiagnosisItems diagnosisItems) {
        uiModel.addAttribute("diagnosisItems", diagnosisItems);
    }
    
    String DiagnosisItemsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
