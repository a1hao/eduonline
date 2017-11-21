package com.entity;

public class tb_type {
	private int tib;
	private String tname;
	public int getTib() {
		return tib;
	}
	public void setTib(int tib) {
		this.tib = tib;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	
	
	@Override
	public String toString() {
		return "tb_type [tib=" + tib + ", tname=" + tname + "]";
	}
	
}
