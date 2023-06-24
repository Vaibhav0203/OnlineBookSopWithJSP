package com.sunbeam.beans;

import java.util.ArrayList;
import java.util.List;

import com.sunbeam.daos.Book;
import com.sunbeam.daos.BookDao;

public class AllBooksBean {
	private List<Book> books;
	public AllBooksBean() {
		this.books = new ArrayList<Book>();
	}
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	public void fetchAllBooks() {
		try(BookDao dao = new BookDao()) {
			books = dao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
