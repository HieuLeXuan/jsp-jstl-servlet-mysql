package com.hieulexuan.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Account;
import com.hieulexuan.models.Category;
import com.hieulexuan.models.Product;

@WebServlet(urlPatterns = "/manager-product")
public class ManagerProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if (action == null) {
			doGet_Index(request, response);
		} else if (action.equalsIgnoreCase("find")) {
			doGet_Find(request, response);
		}
	}

	protected void doGet_Pagination(HttpServletRequest request, HttpServletResponse response, Account acc)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");

		int totalEle = dao.getTotalProductByAccountId(acc.getId());
		int endPage = totalEle / 1;

		String index = request.getParameter("index");
		if (index == null) {
			index = "1";
		}
		List<Product> products = dao.paginationProd(account.getId(), Integer.parseInt(index));
		List<Category> categories = dao.getAllCategory();

		request.setAttribute("managerProd", products);
		request.setAttribute("managerCate", categories);
		request.setAttribute("totalEle", totalEle);
		request.setAttribute("endPage", endPage);
		request.setAttribute("tag", index);
		request.getRequestDispatcher("/views/manager-product.jsp").forward(request, response);
	}

	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");

		if (account != null) {
			int totalEle = dao.getTotalProductByAccountId(account.getId());
			int endPage = totalEle / 1;
			String indexPath = request.getParameter("index");
			int index;
			if (indexPath == null || indexPath.equals("0")) {
				index = 1;
			} else {
				index = Integer.parseInt(indexPath);
				if (index > totalEle) {
					index = totalEle;
				}
			}

			List<Product> products = dao.paginationProd(account.getId(), index);
			List<Category> categories = dao.getAllCategory();
			request.setAttribute("managerProd", products);
			request.setAttribute("managerCate", categories);
			request.setAttribute("totalEle", totalEle);
			request.setAttribute("endPage", endPage);
			request.setAttribute("tag", index);
			request.getRequestDispatcher("/views/manager-product.jsp").forward(request, response);
		} else {
			response.sendRedirect("home");
		}
	}

	protected void doGet_Find(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String productId = request.getParameter("prodId");
		Product product = dao.getProductById(productId);

		Gson gson = new Gson();
		PrintWriter printWriter = response.getWriter();
		printWriter.print(gson.toJson(product));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("create")) {
			doPost_Create(request, response);
		} else if (action.equalsIgnoreCase("update")) {
			doPost_Update(request, response);
		} else if (action.equalsIgnoreCase("delete")) {
			doPost_Delete(request, response);
		}
	}

	protected void doPost_Create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");

		if (account != null) {
			int totalEle = dao.getTotalProductByAccountId(account.getId());
			int endPage = totalEle / 1;

			String name = request.getParameter("name");
			String image = request.getParameter("image");
			String price = request.getParameter("price");
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String categoryId = request.getParameter("category");

			dao.createProduct(new Product(name, image, Double.parseDouble(price), title, description, categoryId),
					account.getId());

			List<Product> products = dao.paginationProd(account.getId(), totalEle + 1);
			List<Category> categories = dao.getAllCategory();
			request.setAttribute("managerProd", products);
			request.setAttribute("managerCate", categories);
			request.setAttribute("totalEle", totalEle + 1);
			request.setAttribute("endPage", endPage + 1);
			request.setAttribute("tag", totalEle + 1);
			request.getRequestDispatcher("/views/manager-product.jsp").forward(request, response);
		} else {
			response.sendRedirect("home");
		}
	}

	protected void doPost_Delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");

		if (account != null) {
			int totalEle = dao.getTotalProductByAccountId(account.getId());
			int endPage = totalEle / 1;

			String productId = request.getParameter("prodId");
			dao.deleteProduct(productId);

			List<Product> products = dao.paginationProd(account.getId(), 1);
			List<Category> categories = dao.getAllCategory();
			request.setAttribute("managerProd", products);
			request.setAttribute("managerCate", categories);
			request.setAttribute("totalEle", totalEle - 1);
			request.setAttribute("endPage", endPage - 1);
			request.setAttribute("tag", 1);
			request.getRequestDispatcher("/views/manager-product.jsp").forward(request, response);
		} else {
			response.sendRedirect("home");
		}
	}

	protected void doPost_Update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");

		if (account != null) {
			int totalEle = dao.getTotalProductByAccountId(account.getId());
			int endPage = totalEle / 1;

			String productId = request.getParameter("prodId");
			String name = request.getParameter("name");
			String image = request.getParameter("image");
			String price = request.getParameter("price");
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String categoryId = request.getParameter("category");
			Product product = new Product(name, image, Double.parseDouble(price), title, description, categoryId);
			dao.updateProduct(product, productId);

			List<Product> products = dao.paginationProd(account.getId(), 1);
			List<Category> categories = dao.getAllCategory();
			request.setAttribute("managerProd", products);
			request.setAttribute("managerCate", categories);
			request.setAttribute("totalEle", totalEle);
			request.setAttribute("endPage", endPage);
			request.setAttribute("tag", 1);
			request.getRequestDispatcher("/views/manager-product.jsp").forward(request, response);
		} else {
			response.sendRedirect("home");
		}
	}
}
