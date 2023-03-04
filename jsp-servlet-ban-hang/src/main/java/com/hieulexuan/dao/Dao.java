package com.hieulexuan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hieulexuan.context.DBContext;
import com.hieulexuan.models.Account;
import com.hieulexuan.models.Category;
import com.hieulexuan.models.Product;

public class Dao {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	public List<Product> getAllProduct(String type) {
		String query = !type.equals("") ? (type.equals("latest") ? "select * from Products order by id ASC limit 8"
				: "select * from Products order by id DESC limit 8") : "select * from Products";
		List<Product> products = new ArrayList<Product>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> getTop3Product() {
		String query = "select * from Products limit 3";
		List<Product> products = new ArrayList<Product>();

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public Product getProductById(String id) {
		String query = "select * from Products where id = ?";
		Product product = new Product();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();

			while (rs.next()) {
				product = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}

	public List<Product> getProductByCategoryIdTop3(String categoryId) {
		String query = "select * from Products where category_id = ? limit 3";
		List<Product> products = new ArrayList<Product>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, categoryId);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> getProductByCategoryIdNext3(String categoryId, int amount) {
		String query = "select * from Products where category_id = ? order by id limit ?, 3";
		List<Product> products = new ArrayList<Product>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, categoryId);
			ps.setInt(2, amount);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> getNext3Product(int amount) {
		String query = "select * from Products order by id limit ?, 3";
		List<Product> products = new ArrayList<Product>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, amount);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> getProductByAccountId(String accountId) {
		String query = "select * from Products where account_id = ?";
		List<Product> products = new ArrayList<Product>();
		try {
			conn = new DBContext().getConnection();

			ps = conn.prepareStatement(query);
			ps.setString(1, accountId);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> getProductByName(String prodName) {
		String query = "select * from Products where name like ?";
		List<Product> products = new ArrayList<Product>();

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);

			ps.setString(1, "%" + prodName + "%");

			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return products;
	}

	public void createProduct(Product prod, String accountId) {
		String query = "insert into Products (name, image, price, title, description, category_id, account_id) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, prod.getName());
			ps.setString(2, prod.getImage());
			ps.setDouble(3, prod.getPrice());
			ps.setString(4, prod.getTitle());
			ps.setString(5, prod.getDescription());
			ps.setString(6, prod.getCategoryId());
			ps.setString(7, accountId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateProduct(Product product, String productId) {
		String query = "update Products set name = ?, image = ?, price = ?, title = ?, description = ?, category_id = ? where id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, product.getName());
			ps.setString(2, product.getImage());
			ps.setDouble(3, product.getPrice());
			ps.setString(4, product.getTitle());
			ps.setString(5, product.getDescription());
			ps.setString(6, product.getCategoryId());
			ps.setString(7, productId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteProduct(String productId) {
		String query = "delete from Products where id = ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, productId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Category> getAllCategory() {
		String query = "select * from Categories";
		List<Category> categories = new ArrayList<Category>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				categories.add(new Category(rs.getString(1), rs.getString(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return categories;
	}

	public Account getAccount(String user, String pass) {
		String query = "select * from Accounts where username like ? and password like ?";
		Account account = new Account();
		try {
			conn = new DBContext().getConnection();

			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + user + "%");
			ps.setString(2, "%" + pass + "%");

			rs = ps.executeQuery();

			while (rs.next()) {
				account = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return account;
	}

	public Account getAccountByName(String user) {
		String query = "select * from Accounts where username like ?";
		Account account = new Account();
		try {
			conn = new DBContext().getConnection();

			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + user + "%");

			rs = ps.executeQuery();

			while (rs.next()) {
				account = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return account;
	}

	public void createAccount(String user, String pass) {
		String query = "insert into Accounts (username, password, isSell, isAdmin) values (?, ?, 0, 0)";
		Account account = new Account();
		try {
			conn = new DBContext().getConnection();

			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getTotalProductByAccountId(String accountId) {
		String query = "select count(*) from Products where account_id = ?";
		int total = 0;
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, accountId);
			rs = ps.executeQuery();

			while (rs.next()) {
				total = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return total;
	}

	public List<Product> paginationProd(String accountId, int index) {
		String query = "select * from Products where account_id = ? limit ?, 1";
		List<Product> products = new ArrayList<Product>();

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, accountId);
			ps.setInt(2, (index - 1) * 1);
			rs = ps.executeQuery();

			while (rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return products;
	}
}
