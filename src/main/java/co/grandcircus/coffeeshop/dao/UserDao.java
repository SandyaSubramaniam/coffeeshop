package co.grandcircus.coffeeshop.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.entities.User;

@Repository
@Transactional
public class UserDao {

	@PersistenceContext
	private EntityManager em;

	public void create(User user) {

		em.persist(user);
	}
}
