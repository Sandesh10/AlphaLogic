package com.alphalogic.model;

import java.util.HashMap;

public class Cart {
	HashMap<Integer, Product> cartItems;
	
	public Cart(){
		cartItems = new HashMap<>();
	}
	
	public HashMap getCartItems(){
		return cartItems;
	}
	
	public void addtoCart(int productId, Product p){
		cartItems.put(productId, p);
	}
}
