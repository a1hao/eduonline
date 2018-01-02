package com.entity;

public class tb_shoucang {
int scid;
int shibian;
String name;



@Override
public String toString() {
	return "tb_shoucang [scid=" + scid + ", shibian=" + shibian + ", name=" + name + "]";
}
public int getScid() {
	return scid;
}
public void setScid(int scid) {
	this.scid = scid;
}
public int getShibian() {
	return shibian;
}
public void setShibian(int shibian) {
	this.shibian = shibian;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

}
