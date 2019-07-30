package co.grandcircus.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
