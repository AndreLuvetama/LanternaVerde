package br.com.skatefibra.interfaces;

import java.util.List;

import br.com.skatefibra.user.Usuario;
import br.com.skatefibra.user.UsuarioElementos;

public interface UInterfaces {
	 List<Usuario> listarUsuario();
	 Integer salvarUsuario(Usuario user, UsuarioElementos userEl, String senha);
}
