package com.entity;

public class tb_shiping {
private int shibian;
private String texttitle;
private String text;
private String video;
private String picture;
private int tid;
private int ok;
private int members;

public String getVideo() {
	return video;
}
public void setVideo(String video) {
	this.video = video;
}
public int getOk() {
	return ok;
}
public void setOk(int ok) {
	this.ok = ok;
}

public int getMembers() {
	return members;
}
public void setMembers(int members) {
	this.members = members;
}
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}
public int getShibian() {
	return shibian;
}
public void setShibian(int shibian) {
	this.shibian = shibian;
}
public String getTexttitle() {
	return texttitle;
}
public void setTexttitle(String texttite) {
	this.texttitle = texttite;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}

public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
@Override
public String toString() {
	return "tb_shiping [shibian=" + shibian + ", texttitle=" + texttitle + ", text=" + text + ", video=" + video
			+ ", picture=" + picture + ", tid=" + tid + ", ok=" + ok + ", members=" + members + "]";
}


}
