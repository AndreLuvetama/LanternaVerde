package br.com.skatefibra.web;






import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.skatefibra.dao.UsuarioDAO;

import br.com.skatefibra.user.UsuarioAdmin;





@WebServlet("/")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO usuarioDAO;
	
	public void init() {
		usuarioDAO = new UsuarioDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/novo":
				mostrarLogin(request, response);
				break;
			case "/cadastrar":
				cadastrarUsuario(request, response);
				break;
			
			default:
				listarUsuario(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}



	private void mostrarLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("jogo.jsp");
		dispatcher.forward(request, response);
	}



	private void cadastrarUsuario(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String nomeUsuario = request.getParameter("nomeUsuario");
		String usuarioEmail = request.getParameter("usuarioEmail");
	    Integer telUsuario =  Integer.parseInt(request.getParameter("telUsuario"));
		Integer whatsUsuario = Integer.parseInt(request.getParameter("whatsUsuario"));
		String usuarioSenha = request.getParameter("usuarioSenha");
		
		UsuarioAdmin user = new UsuarioAdmin(nomeUsuario, usuarioEmail, telUsuario, whatsUsuario, usuarioSenha);
		usuarioDAO.inserirUsuario(user);

		response.sendRedirect("jogo.jsp");
	}
	
	private void listarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<UsuarioAdmin> listarUsuario = usuarioDAO.selectAllUsers();
		request.setAttribute("listarUsuario", listarUsuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jogo.jsp");
		dispatcher.forward(request, response);
	}



}
