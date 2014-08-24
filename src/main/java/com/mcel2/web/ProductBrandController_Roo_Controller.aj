// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.web;

import com.mcel2.domain.ProductBrand;
import com.mcel2.domain.ProductSubFamily;
import com.mcel2.web.ProductBrandController;
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

privileged aspect ProductBrandController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ProductBrandController.create(@Valid ProductBrand productBrand, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productBrand);
            return "productbrands/create";
        }
        uiModel.asMap().clear();
        productBrand.persist();
        return "redirect:/productbrands/" + encodeUrlPathSegment(productBrand.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ProductBrandController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ProductBrand());
        return "productbrands/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ProductBrandController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("productbrand", ProductBrand.findProductBrand(id));
        uiModel.addAttribute("itemId", id);
        return "productbrands/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ProductBrandController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("productbrands", ProductBrand.findProductBrandEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ProductBrand.countProductBrands() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("productbrands", ProductBrand.findAllProductBrands(sortFieldName, sortOrder));
        }
        return "productbrands/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ProductBrandController.update(@Valid ProductBrand productBrand, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productBrand);
            return "productbrands/update";
        }
        uiModel.asMap().clear();
        productBrand.merge();
        return "redirect:/productbrands/" + encodeUrlPathSegment(productBrand.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ProductBrandController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, ProductBrand.findProductBrand(id));
        return "productbrands/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ProductBrandController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ProductBrand productBrand = ProductBrand.findProductBrand(id);
        productBrand.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/productbrands";
    }
    
    void ProductBrandController.populateEditForm(Model uiModel, ProductBrand productBrand) {
        uiModel.addAttribute("productBrand", productBrand);
        uiModel.addAttribute("productsubfamilys", ProductSubFamily.findAllProductSubFamilys());
    }
    
    String ProductBrandController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
