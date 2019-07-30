package co.grandcircus.coffeeshop.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.entities.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbc;

	public void create(User user) {

		System.out.println("Hello");
		String sql = "INSERT INTO users	(username, email, password) VALUES(?, ?, ?)";
		jdbc.update(sql, user.getUsername(), user.getEmail(), user.getPassword());
	}
}
