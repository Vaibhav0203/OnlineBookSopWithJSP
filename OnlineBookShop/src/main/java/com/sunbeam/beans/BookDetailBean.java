package com.sunbeam.beans;

import com.sunbeam.daos.Book;
import com.sunbeam.daos.BookDao;

public class BookDetailBean {
	
	private int id;
	private Book book;
	public BookDetailBean() {
		book = new Book();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public void fetchBook() {
		try(BookDao dao = new BookDao()) {
			book = dao.findById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	

}
