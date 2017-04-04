package restoM2i.controleur;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restoM2i.dto.Menus;

/**
 * Servlet implementation class MenuControleur
 */
@WebServlet("/menuServlet")
public class MenuControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MenuControleur() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("resultMenu.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String entree = Optional.ofNullable(request.getParameter("menu[entree]")).orElse("salade");
		String plat = Optional.ofNullable(request.getParameter("menu[plat]")).orElse("sandwish");
		String dessert = Optional.ofNullable(request.getParameter("menu[dessert]")).orElse("yahourt");

		Menus menu = new Menus();

		menu.setEntrees(entree);
		menu.setPlats(plat);
		menu.setDesserts(dessert);

		request.setAttribute("entree", menu.getEntrees());
		request.setAttribute("plat", menu.getPlats());
		request.setAttribute("dessert", menu.getDesserts());
		doGet(request, response);
	}

}
