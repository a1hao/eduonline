package com.entity;

public class tb_user {
private int id;
private String name;
private String password;
private String ncname;

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
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getNcname() {
	return ncname;
}
public void setNcname(String ncname) {
	this.ncname = ncname;
}
@Override
public String toString() {
	return "tb_user [id=" + id + ", name=" + name + ", password=" + password + ", ncname=" + ncname + "]";
}

}
