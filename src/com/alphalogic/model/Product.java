package com.alphalogic.model;

public class Product {
	int pId;
	private String pName;
	private String pDescription;
	private String pImageUrl;
	private int pQuatityPerUnit;
	private int pUnitPrice;
	private int pUnitWeight;
	private int pUnitInStocks;
	private int UnitinOrder;
	private String Discount;
	private int catId;
	private int sId;
	public Product(int pId, String pName, String pDescription,
			String pImageUrl, int pQuatityPerUnit, int pUnitPrice,
			int pUnitWeight, int pUnitInStocks, int unitinOrder,
			String discount, int catId, int sId) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pDescription = pDescription;
		this.pImageUrl = pImageUrl;
		this.pQuatityPerUnit = pQuatityPerUnit;
		this.pUnitPrice = pUnitPrice;
		this.pUnitWeight = pUnitWeight;
		this.pUnitInStocks = pUnitInStocks;
		UnitinOrder = unitinOrder;
		Discount = discount;
		this.catId = catId;
		this.sId = sId;
	}
	public Product() {
		super();
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public String getpImageUrl() {
		return pImageUrl;
	}
	public void setpImageUrl(String pImageUrl) {
		this.pImageUrl = pImageUrl;
	}
	public int getpQuatityPerUnit() {
		return pQuatityPerUnit;
	}
	public void setpQuatityPerUnit(int pQuatityPerUnit) {
		this.pQuatityPerUnit = pQuatityPerUnit;
	}
	public int getpUnitPrice() {
		return pUnitPrice;
	}
	public void setpUnitPrice(int pUnitPrice) {
		this.pUnitPrice = pUnitPrice;
	}
	public int getpUnitWeight() {
		return pUnitWeight;
	}
	public void setpUnitWeight(int pUnitWeight) {
		this.pUnitWeight = pUnitWeight;
	}
	public int getpUnitInStocks() {
		return pUnitInStocks;
	}
	public void setpUnitInStocks(int pUnitInStocks) {
		this.pUnitInStocks = pUnitInStocks;
	}
	public int getUnitinOrder() {
		return UnitinOrder;
	}
	public void setUnitinOrder(int unitinOrder) {
		UnitinOrder = unitinOrder;
	}
	public String getDiscount() {
		return Discount;
	}
	public void setDiscount(String discount) {
		Discount = discount;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	
	
}
