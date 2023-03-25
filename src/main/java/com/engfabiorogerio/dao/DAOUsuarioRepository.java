package com.engfabiorogerio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.engfabiorogerio.connection.SingleConnectionBanco;
import com.engfabiorogerio.model.ModelLogin;

public class DAOUsuarioRepository {

	private Connection connection;
	
	public DAOUsuarioRepository() {		
		connection = SingleConnectionBanco.getConnection();		
	}
	
	public void gravarUsuario(ModelLogin objeto) throws Exception {
		String sql = "INSERT INTO model_login (login, senha, nome, email) VALUES (?, ?, ?, ?);";
		PreparedStatement prepareSql = connection.prepareStatement(sql);
		
		prepareSql.setString(1, objeto.getLogin());		
		prepareSql.setString(2, objeto.getSenha());
		prepareSql.setString(3, objeto.getNome());
		prepareSql.setString(4, objeto.getEmail());
		
		prepareSql.execute();
		connection.commit();
	}
	
	
	
}
