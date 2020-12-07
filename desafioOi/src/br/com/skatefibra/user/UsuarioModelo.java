package br.com.skatefibra.user;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;


public class UsuarioModelo {
	public Usuario call_me(String access_token) throws Exception {
	     String url = "https://graph.facebook.com/v2.12/me?fields=id,name,picture,email&access_token="+access_token;
	     URL obj = new URL(url);
	     HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	     // optional default is GET
	     con.setRequestMethod("GET");
	     //add request header
	     con.setRequestProperty("User-Agent", "Mozilla/5.0");
	     int responseCode = con.getResponseCode();
	     System.out.println("\nSending 'GET' request to URL : " + url);
	     System.out.println("Response Code : " + responseCode);
	     BufferedReader in = new BufferedReader(
	             new InputStreamReader(con.getInputStream()));
	     String inputLine;
	     StringBuffer response = new StringBuffer();
	     while ((inputLine = in.readLine()) != null) {
	     	response.append(inputLine);
	     }
	     in.close();
	     System.out.println(response);
	     Usuario usuario =new Usuario();
	     JSONObject myResponse = new JSONObject(response.toString());
	     usuario.setNomeUsuario(myResponse.getString("name"));
	     usuario.setId(myResponse.getString("id"));
	     usuario.setEmail(myResponse.getString("email"));
	     JSONObject picture_reponse=myResponse.getJSONObject("picture");
	     JSONObject data_response=picture_reponse.getJSONObject("data");
	     System.out.println("URL : "+data_response.getString("url"));
	     usuario.setImgPerfil(data_response.getString("url"));
		return usuario;
	   }
}
