// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcel2.domain;

import com.mcel2.domain.ProductBrand;
import com.mcel2.domain.ProductColor;

privileged aspect ProductColor_Roo_JavaBean {
    
    public String ProductColor.getColor() {
        return this.color;
    }
    
    public void ProductColor.setColor(String color) {
        this.color = color;
    }
    
    public ProductBrand ProductColor.getBrand() {
        return this.brand;
    }
    
    public void ProductColor.setBrand(ProductBrand brand) {
        this.brand = brand;
    }
    
}
