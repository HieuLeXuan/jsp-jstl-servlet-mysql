package com.hieulexuan.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Account;

@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie o : cookies) {
				if (o.getName().equals("username")) {
					request.setAttribute("username", o.getValue());
				}
				if (o.getName().equals("password")) {
					request.setAttribute("password", o.getValue());
				}
			}
		}

		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("name");
		String pass = request.getParameter("pass");
		String selector = request.getParameter("selector");

		Account account = dao.getAccount(user, pass);

		if (account == null) {
			request.setAttribute("message", "Wrong username and password!!!");
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("acc", account);
			session.setMaxInactiveInterval(60 * 60 * 24 * 365);

			// create cookies for username, password
			Cookie username = new Cookie("username", account.getUsername());
			Cookie password = new Cookie("password", account.getPassword());

			// Set expiry date after 60s for both the cookies.
			username.setMaxAge(60);
			if (selector != null) {
				password.setMaxAge(60);
			} else {
				password.setMaxAge(0);
			}

			// Add both the cookies in the response header.
			response.addCookie(username);
			response.addCookie(password);

			response.sendRedirect("home");
		}
	}

}
