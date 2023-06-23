package com.sunbeam.beans;

import java.util.List;

import com.sunbeam.daos.Book;
import com.sunbeam.daos.BookDao;

public class SubBoksBeans {
	
	private String subject;
	private List<Book> books;
	
	public SubBoksBeans() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public void fetchSubjectBooks() {
		try(BookDao dao = new BookDao()) {
			books = dao.findBySubject(subject);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}	
