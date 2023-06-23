package com.sunbeam.beans;

import java.util.Set;

import com.sunbeam.daos.BookDao;

public class SubjectsBeans {
	
	public SubjectsBeans() {
		super();
		// TODO Auto-generated constructor stub
	}

	private Set<String> subject;

	public Set<String> getSubject() {
		return subject;
	}

	public void setSubject(Set<String> subject) {
		this.subject = subject;
	}
	
	public void showBooks()
	{
		try {
			BookDao Dao = new BookDao();
			subject = Dao.findAllSubjects();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
