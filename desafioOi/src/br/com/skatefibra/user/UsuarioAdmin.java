package br.com.skatefibra.user;

public class UsuarioAdmin{
	
		private String nomeUsuario;		
		private String usuarioEmail;		
		private Integer telUsuario;	
		private Integer whatsUsuario;
		private String usuarioSenha;
				
	
		public UsuarioAdmin(String nomeUsuario, String usuarioEmail, Integer telUsuario, Integer whatsUsuario,
				String usuarioSenha) {
			super();
			
			this.nomeUsuario = nomeUsuario;
			this.usuarioEmail = usuarioEmail;
			this.telUsuario = telUsuario;
			this.whatsUsuario = whatsUsuario;
			this.usuarioSenha = usuarioSenha;
		}
		public String getNomeUsuario() {
			return nomeUsuario;
		}
		public void setNomeUsuario(String nomeUsuario) {
			this.nomeUsuario = nomeUsuario;
		}

		public String getUsuarioEmail() {
			return usuarioEmail;
		}
		public void setUsuarioEmail(String usuarioEmail) {
			this.usuarioEmail = usuarioEmail;
		}
	
		public Integer getTelUsuario() {
			return telUsuario;
		}
		public void setTelUsuario(Integer telUsuario) {
			this.telUsuario = telUsuario;
		}
		public Integer getWhatsUsuario() {
			return whatsUsuario;
		}
		public void setWhatsUsuario(Integer whatsUsuario) {
			this.whatsUsuario = whatsUsuario;
		}
		public String getUsuarioSenha() {
			return usuarioSenha;
		}
		public void setUsuarioSenha(String usuarioSenha) {
			this.usuarioSenha = usuarioSenha;
		}

		
		
		

	}



