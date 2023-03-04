package com.hieulexuan.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Product;

@WebServlet(urlPatterns = "/load")
public class LoadMoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String categoryId = request.getParameter("cId");
		int amount = Integer.parseInt(request.getParameter("exits"));
		List<Product> products;

		if (categoryId != null) {
			products = dao.getProductByCategoryIdNext3(categoryId, amount);
		} else {
			products = dao.getNext3Product(amount);
		}

		PrintWriter out = response.getWriter();

		for (Product o : products) {
			out.print("<div class=\"category-product col-lg-4 col-md-6\">\n"
					+ "								<div class=\"single-product\">\n"
					+ "									<img class=\"img-fluid category-img\" src=\"" + o.getImage()
					+ "\" alt=\"\">\n" + "									<div class=\"product-details\">\n"
					+ "										<h6>" + o.getName() + "</h6>\n"
					+ "										<div class=\"price\">\n"
					+ "											<h6>" + o.getPrice() + "$</h6>\n"
					+ "											<h6 class=\"l-through\">$210.00</h6>\n"
					+ "										</div>\n"
					+ "										<div class=\"prd-bottom\">\n" + "\n"
					+ "											<a href=\"\" class=\"social-info\"> <span class=\"ti-bag\"></span>\n"
					+ "												<p class=\"hover-text\">add to bag</p>\n"
					+ "											</a>\n"
					+ "											<!-- <a href=\"\" class=\"social-info\"> <span\n"
					+ "											class=\"lnr lnr-heart\"></span>\n"
					+ "											<p class=\"hover-text\">Wishlist</p>\n"
					+ "										</a> <a href=\"\" class=\"social-info\"> <span\n"
					+ "											class=\"lnr lnr-sync\"></span>\n"
					+ "											<p class=\"hover-text\">compare</p>\n"
					+ "										</a> -->\n"
					+ "											<a href=\"detail?prodId=" + o.getId()
					+ "\" class=\"social-info\"> <span\n"
					+ "												class=\"lnr lnr-move\"></span>\n"
					+ "												<p class=\"hover-text\">view more</p>\n"
					+ "											</a>\n"
					+ "										</div>\n" + "									</div>\n"
					+ "								</div>\n" + "							</div>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
