package br.com.skatefibra.conexao;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;

public class Conexao {
	private static final String SERVIDOR = "localhost";
	private static final String USUARIO = "root";
	private static final String SENHA = "ra123";
	private static final String PORTA = "3306";
	private static final String SCHEMA = "db_skatefibra";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String PARAMS = "?serverTimezone=UTC&useSSL=false";
	private static Connection instance = null;

	public synchronized static Connection getInstance() {

		try {
			if (instance == null || instance.isClosed()) {
				instance = conectar();
			} else if (!instance.isValid(0)) {
				instance.close();
				instance = conectar();
			}
		} catch (Exception e) {
			System.err.print(e.toString());
		} finally {
			return instance;
		}

	}

	private static Connection conectar()
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		Class.forName(DRIVER).newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://" + SERVIDOR + ":" + PORTA + "/" + SCHEMA + PARAMS,
				USUARIO ,SENHA+ "");
		return con;
	}
}
