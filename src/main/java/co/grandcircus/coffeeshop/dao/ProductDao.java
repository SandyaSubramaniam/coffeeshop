package co.grandcircus.coffeeshop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.entities.Product;

@Repository
@Transactional
public class ProductDao {

	@PersistenceContext
	private EntityManager em;

	public List<Product> findAll() {

		return em.createQuery("FROM Product", Product.class).getResultList();
	}

	public Product findById(Integer id) {

		return em.find(Product.class, id);
	}

	public void create(Product product) {

		em.persist(product);
	}

	public void update(Product product) {

		em.merge(product);
	}

	public void delete(Integer id) {

		// Deleting with Hibernate entity manager requires fetching a reference first.
		Product product = em.getReference(Product.class, id);
		em.remove(product);
	}
}
