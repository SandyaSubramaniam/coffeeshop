package co.grandcircus.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffeeshop.dao.ProductDao;
import co.grandcircus.coffeeshop.entities.Product;

@Controller
public class CoffeeShopController {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public ModelAndView index() {

		return new ModelAndView("redirect:/products");
	}

	@RequestMapping("/products")
	public ModelAndView list() {

		List<Product> products = productDao.findAll();
		return new ModelAndView("list", "products", products);
	}

	@RequestMapping("/products/admin")
	public ModelAndView showAdminPage() {

		List<Product> products = productDao.findAll();
		return new ModelAndView("admin", "products", products);
	}

	/*
	 * @RequestMapping("/users/login") public ModelAndView showAdminLogin() {
	 * 
	 * return new ModelAndView("login"); }
	 * 
	 * @PostMapping("/login") public ModelAndView submitAdminLogin(User user,
	 * HttpSession session) {
	 * 
	 * if (user.getUsername() == "adminuser" && user.getPassword() == "secretcode")
	 * { return new ModelAndView("redirect:/products/add"); } else { return new
	 * ModelAndView("redirect:/", "message",
	 * "You are not an admin user.You cannot access this page."); } }
	 */
	@RequestMapping("/products/add")
	public ModelAndView showCreateForm() {

		return new ModelAndView("add", "title", "Add a Product");
	}

	@PostMapping("/products/save")
	public ModelAndView saveForm(Product product) {

		if (product != null) {
			productDao.update(product);
		} else {
			productDao.create(product);
		}
		return new ModelAndView("redirect:/products/admin");
	}

	@RequestMapping("/products/edit")
	public ModelAndView showEditForm(@RequestParam("id") Integer id) {

		ModelAndView mav = new ModelAndView("add");
		mav.addObject("product", productDao.findById(id));
		mav.addObject("title", "Edit a Product");
		return mav;
	}

	/*
	 * @PostMapping("/products/edit") public ModelAndView submitEditForm(Product
	 * product) {
	 * 
	 * productDao.update(product); return new
	 * ModelAndView("redirect:/products/admin"); }
	 */
	@RequestMapping("/products/delete")
	public ModelAndView delete(@RequestParam("id") Integer id) {

		productDao.delete(id);
		return new ModelAndView("redirect:/products/admin");
	}
}
