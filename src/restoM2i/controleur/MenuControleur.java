package restoM2i.controleur;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String entree  = Optional.ofNullable(request.getParameter("menu[entree]")).orElse("");
		String plat  = Optional.ofNullable(request.getParameter("menu[plat]")).orElse("");
		String dessert  = Optional.ofNullable(request.getParameter("menu[dessert]")).orElse("");
		
		request.setAttribute("entree", entree);
		request.setAttribute("plat", plat);
		request.setAttribute("dessert", dessert);
		request.getRequestDispatcher("resultMenu.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
