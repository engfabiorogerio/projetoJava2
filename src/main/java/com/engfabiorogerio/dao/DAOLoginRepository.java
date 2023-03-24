package com.engfabiorogerio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.engfabiorogerio.connection.SingleConnectionBanco;
import com.engfabiorogerio.model.ModelLogin;

public class DAOLoginRepository {

	private Connection connection;
	
	public DAOLoginRepository() {
		
		connection = SingleConnectionBanco.getConnection();
		
	}
	
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception{
		
		String sql = "select * from model_login where login = ? and senha = ? ";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, modelLogin.getLogin());
		statement.setString(2, modelLogin.getSenha());
		
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			return true;
		}
		
		return false;
	}
	
}
