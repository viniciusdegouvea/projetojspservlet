package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnetion;

public class DaoLogin {
	
	private Connection connection;
	
	public DaoLogin() {
		connection = SingleConnetion.getConnection();
	}
	
	public boolean validarLogin(String login, String senha) throws Exception {
		String sql  = "select * from usuario where login = '" + login + "'and senha = '" + senha + "'";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if(resultSet.next()) {
			return true;
		}else {
			return false;
		}
	}

}
