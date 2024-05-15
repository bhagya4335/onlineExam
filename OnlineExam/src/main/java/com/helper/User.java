package com.helper;

public class User {
	
	  private int id;
	    private String name;
	    private String email;
	    private String rollNo;
	    private int score;
	    private String result;

	    public User(int id, String name, String email, String rollNo, int score, String result) {
	        this.id = id;
	        this.name = name;
	        this.email = email;
	        this.rollNo = rollNo;
	        this.score = score;
	        this.result = result;
	    }

	    public int getId() {
	        return id;
	    }

	    public String getName() {
	        return name;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public String getRollNo() {
	        return rollNo;
	    }

	    public int getScore() {
	        return score;
	    }

	    public String getResult() {
	        return result;
	    }
	

}
