package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Notetable")
public class Note {
	@Id
	
private int id;
private String title;
@Column(length = 1500)
private String content;
private Date adddDate;
public Note() {
	super();
	// TODO Auto-generated constructor stub
}
public Note(String title, String content, Date adddDate) {
	this.id = new Random().nextInt(1000);
	this.title = title;
	this.content = content;
	this.adddDate = adddDate;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getAdddDate() {
	return adddDate;
}
public void setAdddDate(Date adddDate) {
	this.adddDate = adddDate;
}
@Override
public String toString() {
	return "Note [id=" + id + ", title=" + title + ", content=" + content + ", adddDate=" + adddDate + "]";
}

}
