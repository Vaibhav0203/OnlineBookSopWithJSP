package com.sunbeam.beans;

import com.sunbeam.daos.Book;
import com.sunbeam.daos.BookDao;

public class BooksBean {
	private int id;
	private String name;
	private String author;
	private String subject;
	private double price;
	
	public BooksBean() {
	
	}

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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "BookBean [id=" + id + ", name=" + name + ", author=" + author + ", subject=" + subject + ", price="
				+ price + "]";
	}

	public void addBook() {
		try(BookDao dao = new BookDao()) {
			Book b = new Book(id, name, author, subject, price);
			dao.save(b );
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateBook() {
		try(BookDao dao = new BookDao()) {
			Book b = new Book(id, name, author, subject, price);
			dao.update(b);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}