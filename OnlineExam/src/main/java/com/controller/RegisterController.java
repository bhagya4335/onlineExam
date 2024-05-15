package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBconnection;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		 String action = request.getParameter("action");
	        
	        //submit paper 
	        if (action != null && action.equals("submitTest")) {
	            // Correct answers
	        	String q1Answer = "b";
		        String q2Answer = "d";
		        String q3Answer = "c";
		        String q4Answer = "b";
		        String q5Answer = "c";
		        String q6Answer = "d";
		        String q7Answer = "d";
		        String q8Answer = "c";
		        String q9Answer = "b";
		        String q10Answer = "b";
	            // ... repeat for other questions
	            
	            // Get submitted answers from the request
		        String submittedQ1 = request.getParameter("q1");
		        String submittedQ2 = request.getParameter("q2");
		        String submittedQ3 = request.getParameter("q3");
		        String submittedQ4 = request.getParameter("q4");
		        String submittedQ5 = request.getParameter("q5");
		        String submittedQ6 = request.getParameter("q6");
		        String submittedQ7 = request.getParameter("q7");
		        String submittedQ8 = request.getParameter("q8");
		        String submittedQ9 = request.getParameter("q9");
		        String submittedQ10 = request.getParameter("q10");
	            // ... repeat for other questions

	            // Evaluate answers and calculate the score
		        int score = 0;
		        if (q1Answer.equals(submittedQ1)) {
		            score++;
		        }
		        if (q2Answer.equals(submittedQ2)) {
		            score++;
		        }
		        if (q3Answer.equals(submittedQ3)) {
		            score++;
		        }
		        if (q4Answer.equals(submittedQ4)) {
		            score++;
		        }
		        if (q5Answer.equals(submittedQ5)) {
		            score++;
		        }
		        if (q6Answer.equals(submittedQ6)) {
		            score++;
		        }
		        if (q7Answer.equals(submittedQ7)) {
		            score++;
		        }
		        if (q8Answer.equals(submittedQ8)) {
		            score++;
		        }
		        if (q9Answer.equals(submittedQ9)) {
		            score++;
		        }
		        if (q10Answer.equals(submittedQ10)) {
		            score++;
		        }
	            // ... repeat for other questions

		        String result="";
		        if( score >= 4) {
		        	result = "Pass";
		        	}else 
		        	{
		        	result = "Fail";
		        	}
		        
		        HttpSession session = request.getSession();

		        int id = (int) session.getAttribute("idstudents");
		
		        //call updateUser method 
		        DBconnection  db = new DBconnection();
	            boolean userResult = db.updateUser( id,  result,  score);
		        
	            
	            session.setAttribute("score", score);
	            System.out.println(userResult);
	            if (userResult ) {
	            	response.sendRedirect(request.getContextPath() + "/jsp/Result.jsp");
	            }else 
	            	response.sendRedirect(request.getContextPath() + "/jsp/Success.jsp");

	           
	        } //Registration   
	        else if (action != null && action.equals("register")) {
	            String name = request.getParameter("Name");
	            String password = request.getParameter("Password");
	            String email = request.getParameter("Email");
	            String rollNo = request.getParameter("RollNo");
	            int id = Integer.parseInt(request.getParameter("idstudents"));
	            
	            DBconnection db = new DBconnection();
	            boolean registrationResult = db.registerNewStudent(name, password, email, rollNo, id);

	            if (registrationResult) {
	                HttpSession session = request.getSession();
	                session.setAttribute("Name", name);
	                session.setAttribute("idstudents", id);

	                response.sendRedirect(request.getContextPath() + "/jsp/Success.jsp");
	            } else {
	                response.sendRedirect(request.getContextPath() + "/jsp/Error.jsp");
	            }

	            System.out.println("Registration Result = " + registrationResult);
	        } 
	        //login
	        else if (action != null && action.equals("login")) {
	            String name = request.getParameter("Name");
	            String password = request.getParameter("Password");
	            int id = Integer.parseInt(request.getParameter("idstudents"));
	            
	            
	            DBconnection db = new DBconnection();
	            boolean result = db.validateUser(name, password,id);

	            if (result) {
	                HttpSession session = request.getSession();
	                session.setAttribute("Name", name);
	                session.setAttribute("idstudents", id );

	                response.sendRedirect(request.getContextPath() + "/jsp/Success.jsp");
	            } else {
	                response.sendRedirect(request.getContextPath() + "/jsp/Error.jsp");
	            }

	            System.out.println("Login Result = " + result);
	        }
	    }
		
		
	}


