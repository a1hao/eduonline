package com.entity;

public class tb_pingjia {
	
private int pid;
private int id;
private int shibian;
private String pingjia;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getShibian() {
	return shibian;
}
public void setShibian(int shibian) {
	this.shibian = shibian;
}
public String getPingjia() {
	return pingjia;
}
public void setPingjia(String pingjia) {
	this.pingjia = pingjia;
}


public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
@Override
public String toString() {
	return "tb_pingjia [pid=" + pid + ", id=" + id + ", shibian=" + shibian + ", pingjia=" + pingjia + "]";
}


}
