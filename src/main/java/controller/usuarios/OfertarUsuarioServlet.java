package controller.usuarios;

import java.io.IOException;
import java.util.LinkedList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Tipo;
import model.Usuario;
import model.Vendible;
import services.TipoService;
import services.UsuarioService;
import services.VendibleService;


public class OfertarUsuarioServlet extends HttpServlet {


	private static final long serialVersionUID = 891553352498183438L;
	private TipoService tipoService;
	private UsuarioService usuarioService;
	private VendibleService vendibleService;
	LinkedList<Vendible> vendibles;
	LinkedList<Tipo> tipos;
	Integer id;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.tipoService = new TipoService();
		this.usuarioService = new UsuarioService();
		this.vendibleService = new VendibleService();
		vendibles = vendibleService.listar();
		tipos = tipoService.listar();
		}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		id = Integer.parseInt(req.getParameter("id"));
//		Usuario usuario = usuarioService.busacarPorId(id, vendibles, tipos);
//		req.setAttribute("tipos", tipos);
//		req.setAttribute("tmp_user", usuario);	
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/usuarios/ofertar.jsp");
		dispatcher.forward(req, resp);
	}
}
