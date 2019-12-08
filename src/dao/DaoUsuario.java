package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BeanCursoJSP;
import connection.SingleConnetion;

public class DaoUsuario {

	private Connection connection;

	public DaoUsuario() {
		connection = SingleConnetion.getConnection();
	}

	public void salvar(BeanCursoJSP usuario) {
		try {
			String sql = "insert into usuario(login, senha, nome) values (?, ?, ?) ";
			PreparedStatement insert = connection.prepareStatement(sql);
			insert.setString(1, usuario.getLogin());
			insert.setString(2, usuario.getSenha());
			insert.setString(3, usuario.getNome());
			insert.execute();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

	}

	public List<BeanCursoJSP> listar() throws Exception {
		List<BeanCursoJSP> lista = new ArrayList<BeanCursoJSP>();
		String sql = "select * from usuario order by id";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			BeanCursoJSP beanCursoJSP = new BeanCursoJSP();
			beanCursoJSP.setId(resultSet.getLong("id"));
			beanCursoJSP.setLogin(resultSet.getString("login"));
			beanCursoJSP.setSenha(resultSet.getString("senha"));
			beanCursoJSP.setNome(resultSet.getString("nome"));
			lista.add(beanCursoJSP);
		}

		return lista;
	}
	
	public Integer count() throws Exception {
		Integer count = 0;
		String sql = "select id from usuario";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			++count;
		}
		return count;
	}

	public void delete(String id) {
		try {
			String sql = "delete from usuario where id='" + id + "'";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.execute();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public BeanCursoJSP consultar(String id) throws Exception {
		String sql = "select * from usuario where id='" + id + "'";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			BeanCursoJSP beanCursoJSP = new BeanCursoJSP();
			beanCursoJSP.setId(resultSet.getLong("id"));
			beanCursoJSP.setLogin(resultSet.getString("login"));
			beanCursoJSP.setSenha(resultSet.getString("senha"));
			beanCursoJSP.setNome(resultSet.getString("nome"));
			return beanCursoJSP;
		}
		return null;
	}
	
	public boolean validarLogin(String login) throws Exception {
		String sql = "select count(1) as qtd from usuario where login='" + login + "'";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			return resultSet.getInt("qtd") <= 0;
		}
		return false;
	}

	public void atualizar(BeanCursoJSP usuario) {
		try {
			String sql = "update usuario set login = ?, senha = ?, nome = ? where id=" + usuario.getId();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, usuario.getLogin());
			preparedStatement.setString(2, usuario.getSenha());
			preparedStatement.setString(3, usuario.getNome());
			preparedStatement.executeUpdate();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

}
