package com.hieulexuan.context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	private static final String USER_NAME = "root";
	private static final String PASSWORD = "123456";
	private static final String URL = "jdbc:mysql://localhost:3306/jsp_servlet_ban_hang?useSSL=false";

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(URL, USER_NAME, PASSWORD);
	}
}
