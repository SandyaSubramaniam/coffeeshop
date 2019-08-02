package co.grandcircus.coffeeshop.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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

	public User findByName(String username) {

		// getSingleResult finds a single matching row rather than a list of results.
		// But if it doesn't find one, it throws a NoResultException.
		try {
			return em.createQuery("FROM User WHERE username = :username", User.class).setParameter("username", username)
					.getSingleResult();
		} catch (NoResultException ex) {
			return null;
		}
	}
}
