package controller.atracciones;

import java.io.IOException;
import java.util.LinkedList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import model.Tipo;
import services.AtraccionService;
import services.TipoService;


@WebServlet("/atracciones/listar.adm")
public class LIstarAtraccionServlet extends HttpServlet {

	private static final long serialVersionUID = -1441671742359480525L;
	private AtraccionService atraccionService;
	private TipoService tipoService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.atraccionService = new AtraccionService();
		this.tipoService = new TipoService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		LinkedList<Tipo> tipos = tipoService.listar();
		LinkedList<Atraccion> atracciones = atraccionService.listar(tipos);
		req.setAttribute("atracciones", atracciones);
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/atracciones/atracciones.jsp");
		dispatcher.forward(req, resp);

	}
}
