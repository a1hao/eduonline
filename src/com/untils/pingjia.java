package com.untils;

public class pingjia {
	private int id;
	private String name;
	private String pingjia;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPingjia() {
		return pingjia;
	}
	public void setPingjia(String pingjia) {
		this.pingjia = pingjia;
	}
	@Override
	public String toString() {
		return "pingjia [id=" + id + ", name=" + name + ", pingjia=" + pingjia + "]";
	}
	
}
