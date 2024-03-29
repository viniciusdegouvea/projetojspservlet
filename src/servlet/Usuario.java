package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanCursoJSP;
import dao.DaoUsuario;

@WebServlet("/salvarUsuario")
public class Usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoUsuario daoUsuario = new DaoUsuario();

	public Usuario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String acao = request.getParameter("acao");
			String user = request.getParameter("user");

			if (acao.equalsIgnoreCase("delete")) {
				daoUsuario.delete(user);
				RequestDispatcher view = request.getRequestDispatcher("/cadastroUsuario.jsp");
				request.setAttribute("usuarios", daoUsuario.listar());
				request.setAttribute("count", daoUsuario.count());
				view.forward(request, response);
			} else if (acao.equalsIgnoreCase("editar")) {
				BeanCursoJSP beanCursoJSP = daoUsuario.consultar(user);
				RequestDispatcher view = request.getRequestDispatcher("/cadastroUsuario.jsp");
				request.setAttribute("usuarios", daoUsuario.listar());
				request.setAttribute("count", daoUsuario.count());
				request.setAttribute("user", beanCursoJSP);
				view.forward(request, response);

			} else if (acao.equalsIgnoreCase("listartodos")) {
				RequestDispatcher view = request.getRequestDispatcher("/cadastroUsuario.jsp");
				request.setAttribute("usuarios", daoUsuario.listar());
				request.setAttribute("count", daoUsuario.count());
				view.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");

		BeanCursoJSP usuario = new BeanCursoJSP();
		usuario.setId(!id.isEmpty() ? Long.parseLong(id) : 0);
		usuario.setLogin(login);
		usuario.setSenha(senha);
		usuario.setNome(nome);
		try {
			if (id == null || id.isEmpty() && !daoUsuario.validarLogin(login)) {
				request.setAttribute("msg", "Usuario ja existe com o mesmo login");
			}
			
			if (id == null || id.isEmpty() && daoUsuario.validarLogin(login)) {
				daoUsuario.salvar(usuario);
				request.setAttribute("msg", "Usu�rio cadastrado com sucesso!");
			} else if(id != null && !id.isEmpty()){
				daoUsuario.atualizar(usuario);
				request.setAttribute("msg", "Usu�rio editado com sucesso!");
			}

			RequestDispatcher view = request.getRequestDispatcher("cadastroUsuario.jsp");
			request.setAttribute("usuarios", daoUsuario.listar());
			request.setAttribute("count", daoUsuario.count());
			view.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
