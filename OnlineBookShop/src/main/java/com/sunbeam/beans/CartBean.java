package com.sunbeam.beans;

import java.util.ArrayList;
import java.util.List;

public class CartBean {

	private String[] bookIds; 
	private List<Integer> cart;
	
	public CartBean() {
		bookIds = new String[0];
		cart = new ArrayList<>();
	}

	public String[] getBookIds() {
		return bookIds;
	}

	public void setBookIds(String[] bookIds) {
		this.bookIds = bookIds;
	}

	public List<Integer> getCart() {
		return cart;
	}

	public void setCart(List<Integer> cart) {
		this.cart = cart;
	}
	
	public void addCart() {
		for (String bookId : bookIds) {
			int id = Integer.parseInt(bookId);
			cart.add(id);
		}
	}
	
}
