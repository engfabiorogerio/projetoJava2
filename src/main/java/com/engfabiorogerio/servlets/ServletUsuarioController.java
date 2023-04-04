package com.engfabiorogerio.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.engfabiorogerio.dao.DAOUsuarioRepository;
import com.engfabiorogerio.model.ModelLogin;


@WebServlet("/ServletUsuarioController")
public class ServletUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
	
    public ServletUsuarioController() {
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		try {
			if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletar")) {
				String idUser = request.getParameter("id");
				daoUsuarioRepository.deletarUser(idUser);
				request.setAttribute("msg", "Dados deletados");
			}
			
			request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String msg = "Insira a mensagem";
		
		try {
			String id = request.getParameter("id");
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id): null);
			modelLogin.setNome(nome);
			modelLogin.setEmail(email);
			modelLogin.setLogin(login);
			modelLogin.setSenha(senha);
			
			if(daoUsuarioRepository.validarLogin(modelLogin.getLogin()) && modelLogin.getClass() == null) {
				request.setAttribute("msg", "Por favor insira um login válido");
			}else {
				if(modelLogin.isNovo()) {
					request.setAttribute("msg", "Gravado com sucesso!");	
				}else {
					request.setAttribute("msg", "Atualizado com sucesso");
				}
				modelLogin = daoUsuarioRepository.gravarUsuario(modelLogin);
			}
			
			
			
			request.setAttribute("msg", "Operação Realizada com Sucesso");
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/usuario.jsp");
			request.setAttribute("modolLogin", modelLogin);
			redireciona.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

}
