package br.com.skatefibra.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import br.com.skatefibra.conexao.Conexao;
import br.com.skatefibra.user.UsuarioAdmin;




public class UsuarioDAO {
	private Connection connection;





	private static final String INSERIRUSUARIO = "INSERT INTO usuario" + "  (nome_usuario, email_usuario, "
			+ "senha_usuario, usuario_whats, usuario_tel) VALUES (?, ?, ?, ?,?);";
	private static final String SELECTTODOSUSUARIOS = "select * from usuario";



	public UsuarioDAO() {
		this.connection = Conexao.getInstance();
	}



	public void inserirUsuario(UsuarioAdmin user) throws SQLException {
		try (
		
				PreparedStatement ps = connection.prepareStatement(INSERIRUSUARIO)) {
			
			ps.setString(1, user.getNomeUsuario());			
			ps.setString(2, user.getUsuarioEmail());
			ps.setString(3, user.getUsuarioSenha());
			ps.setInt(5, user.getWhatsUsuario());
			ps.setInt(4, user.getTelUsuario());
				
			
			System.out.println(ps);
			ps.execute();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	
	
	

	

	
	public List<UsuarioAdmin> selectAllUsers() {

		
		List<UsuarioAdmin> usuarios = new ArrayList<>();

		try (

				
			PreparedStatement preparedStatement = connection.prepareStatement(SELECTTODOSUSUARIOS);) {
			System.out.println(preparedStatement);
	
			ResultSet rs = preparedStatement.executeQuery();

			
			while (rs.next()) {
		
				String nomeUsuario = rs.getString("nomeUsuario");
				String usuarioEmail = rs.getString("usuarioEmail");
				Integer telUsuario = rs.getInt("telUsuario");
				Integer whatsUsuario = rs.getInt("whatsUsuario");	
				String usuarioSenha = rs.getString("usuarioSenha");
				usuarios.add(new UsuarioAdmin( nomeUsuario, usuarioEmail, telUsuario, whatsUsuario, usuarioSenha));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return usuarios;
	}
	


	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
