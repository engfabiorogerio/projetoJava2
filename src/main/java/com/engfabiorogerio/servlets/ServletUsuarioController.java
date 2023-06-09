package com.engfabiorogerio.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.engfabiorogerio.dao.DAOUsuarioRepository;
import com.engfabiorogerio.model.ModelLogin;
import com.fasterxml.jackson.databind.ObjectMapper;




@WebServlet("/ServletUsuarioController")
public class ServletUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
	
    public ServletUsuarioController() {
      
    }


	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			
			String acao = request.getParameter("acao");
			if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletar")) {
				String idUser = request.getParameter("id");
				daoUsuarioRepository.deletarUser(idUser);
				request.setAttribute("msg", "Dados deletados");
				request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);

			} else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletarajax")) {
				 
				 String idUser = request.getParameter("id");				 
				 daoUsuarioRepository.deletarUser(idUser);				 
				 response.getWriter().write("Excluido com sucesso!");
				 
		 }else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarUserAjax")) {
			 
			 String nomeBusca = request.getParameter("nomeBusca");			 
			 List<ModelLogin> dadosJsonUser =  daoUsuarioRepository.consultaUsuarioList(nomeBusca);			 
			 ObjectMapper mapper = new ObjectMapper();			 
			 String json = mapper.writeValueAsString(dadosJsonUser);			 
			 response.getWriter().write(json);			 
			 
			 
		 }
		 else {
			 request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
		 }
			

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			String msg = "Insira a mensagem";
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
			
			if(daoUsuarioRepository.validarLogin(modelLogin.getLogin()) && modelLogin.getId() == null) {
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
			request.setAttribute("modolLogin", modelLogin);
			request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

}
