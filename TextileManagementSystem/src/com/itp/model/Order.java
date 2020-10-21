package com.itp.model;

import java.sql.Date;

public class Order {
	
	
	private String Product;
    private String Quantity ; 
    private String Size;
    private String SubTotal ;
    private String Discount;
    private String Total ;
    private String PurchaseDate ;
	private String Status ;
	
	
	
	public String getOrderID() {
		return OrderID;
	}



	public void setOrderID(String orderID) {
		OrderID = orderID;
	}



	public String getProduct() {
		return Product;
	}



	public void setProduct(String product) {
		Product = product;
	}



	public String getQuantity() {
		return Quantity;
	}



	public void setQuantity(String quantity) {
		Quantity = quantity;
	}


	public String getSize() {
		return Size;
	}



	public void setSize(String size) {
		Size = size;
	}

	public String getSubTotal() {
		return SubTotal;
	}



	public void setSubTotal(String subTotal) {
		SubTotal = subTotal;
	}



	public String getPurchaseDate() {
		return SubTotal;
	}


	
	public String getDiscount() {
		return Discount;
	}



	public void setDiscount(String discount) {
		Discount = discount;
	}



	public String getTotal() {
		return Total;
	}



	public void setTotal(String total) {
		Total = total;
	}



	public String PurchaseDate() {
		return PurchaseDate;
	}



	public void setPurchaseDate(String string) {
		PurchaseDate = string;
	}



	public String getStatus() {
		return Status;
	}



	public void setStatus(String status) {
		Status = status;
	}



	
	private String OrderID;
	@Override
	public String toString() {
		return "Order [OrderID=" + OrderID + ", Product=" + Product + ", Quantity=" + Quantity + ", Size=" + Size
				+ ", SubTotal=" + SubTotal + ", Discount=" + Discount + ", Total=" + Total + ", PurchaseDate="
				+ PurchaseDate + ", Status=" + Status + "]";
	}

	
	
	


	
	
	
	
	

}
