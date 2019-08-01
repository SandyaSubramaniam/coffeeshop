package co.grandcircus.coffeeshop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffeeshop.dao.UserDao;
import co.grandcircus.coffeeshop.entities.User;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/showForm")
	public ModelAndView showUserForm() {

		return new ModelAndView("user-registration");
	}

	@PostMapping("/register")
	public ModelAndView registerUser(User user, HttpSession session) {

		userDao.create(user);
		session.setAttribute("user", user);
		return new ModelAndView("complete");
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("user");
		return new ModelAndView("redirect:/");
	}
}
