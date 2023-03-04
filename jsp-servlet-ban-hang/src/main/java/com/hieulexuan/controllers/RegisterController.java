package com.hieulexuan.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Account;

@WebServlet(urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("name");
		String pass = request.getParameter("pass");
		String cf_pass = request.getParameter("cf_pass");

		Account dbAccount = dao.getAccount(user, pass);

		if (dao.getAccountByName(user).getId() != null && dao.getAccountByName(user).getUsername().equals(user)) {
			request.setAttribute("message", "Username already in database");
			request.getRequestDispatcher("/views/register.jsp").forward(request, response);
		} else if (dbAccount.getId() == null) {
			if (pass.equals(cf_pass)) {
				dao.createAccount(user, pass);
				response.sendRedirect("home");
			} else {
				request.setAttribute("message", "Please enter confirm password again");
				request.getRequestDispatcher("/views/register.jsp").forward(request, response);
			}
		}
	}

}
