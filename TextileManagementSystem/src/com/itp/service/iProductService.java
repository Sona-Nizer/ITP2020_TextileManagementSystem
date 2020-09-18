/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */

package com.itp.service;

import java.util.*;
import com.itp.model.Product;

/*
 * This is an interface for iProductService
 */

public interface iProductService {
	
	public int addProduct(Product p1);
	
	public List<Product>listProduct();
	
	public Product getProductById(String ID);
	
	public int editProduct(Product p1);
	
	public int deleteProduct(String ID);
	
}
