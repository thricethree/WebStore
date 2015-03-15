package com.uciext.springfw.project.model;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="productList")
public class ProductList {

	ArrayList<Product> products = new ArrayList<Product>();

	public ArrayList<Product> getProducts() {
		return products;
	}

	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}
	
	
}
