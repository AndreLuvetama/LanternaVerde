<%@page import="br.com.skatefibra.user.Usuario"%>
<%@page import="br.com.skatefibra.user.UsuarioModelo"%>
<%@page import="br.com.skatefibra.dao.UsuarioDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" charset="ISO-8859-1" content="text/html">

<meta name="theme-color" content="#563d7c">

<title>Skate na OI</title>
<link rel ="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
</head>

<style>
     .section{
		  	display: flex;
			flex-direction: row;
			justify-content: center;
			align-items: center;
			background-color: #000;
			height: 100%;
      }
      
      	.imgLogo {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			border-radius: 50%;
			background: #60a3bc;
			padding: 10px;
			text-align: center;
		}
		
		
		.bt_facebook{
		 text-align: center;
		
		}
		
		
		.boxForm1{
			display: flex;
		flex-direction: row;
		justify-content: center;
		 height: 350px;
		 width: 450px;
		 background: #fff;
		 
		 box-shadow: 3px 3px 3px 3px #aaaaaa;
		
		}
		
		
		.boxForm{
			display: flex;
		flex-direction: row;
		justify-content: center;
		 height: 350px;
		 width: 450px;
		 background: #00c131;
		
		 border: 5px solid #ffff80;
		}
		
		.formEntrada{
			height: 250px;
			width: 350px;

		
		}
		.centralizar{
		align-items: center;
		}
		
        a.linkText:link {
        text-decoration: none;
        color: #fff;
        font-size: 14px;
        
        
        }
    
    	a.linkText:hover {
					  color:#ffff00;
					  font-size: 20px;
					}
					
		.telaJogo{
				background-color: #008000;
				height: 100%;	
				border: solid 10px #ffffff;
				
			}
			
		.msgJogo{
		font-size:20px;
		
		}
		.textForm{
		color: #fff;
		font-size: 12px;
		font-family: sans-senrif, verdana;
		
		}
			.formJogo{
			
			  background: #fff;
			}
			.textoTelaJogo{
			    color: #fff;
			    font-size: 20px;
			    font-family: sans-senrif, verdana;
			    text-align: center;
			    font-weight: bold;
			}
		.imgStyle{
			border-radius: 50%;
			float:right;
		}
	.linha{
		 background-color: #fff;
		 border: 1px solid #eee;
	}
    
</style>
<body>
    
		 
		
		
 	<div class="container telaJogo">
	
		<div class="form-group row pt-5">
			
						 
				<div class="col-sm-12">
					<p class="text-center textoTelaJogo"> BEM VINDO(A) A PISTA DE FIBRA DA OI</p>
				</div>	
			</div>
	
			<div class= "col-md-10	 col-md-6 ml-auto pt-5">
				<form action="cadastrar" method="post">			
				
				<div class="form-group row">
				    <label for="nomeUsuario" class="col-sm-1 col-form-label textForm">Nome</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="nomeUsuario" placeholder="Nome" name="nomeUsuario" value="">
				    </div>
				  </div>
			   <div class="form-group row">
				    <label for="usuarioEmail" class="col-sm-1 col-form-label textForm">Email</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="usuarioEmail" placeholder="Email" name="usuarioEmail" value="">
				    </div>
				    <label for="usuarioSenha" class="col-sm-1 col-form-label textForm">Senha</label>
				    <div class="col-sm-2">
				      <input type="text" class="form-control" id="usuarioSenha" placeholder="Senha" name="usuarioSenha" value="">
				    </div>
				</div>
				
				<div class="form-group row">
				    <label for="inputWhatsapp" class="col-sm-2 col-form-label textForm">WhatsApp</label>
				    <div class="col-sm-4">
				      <input type="text" class="form-control" id="inputWhatsapp" placeholder="(00) 00000000 " name="whatsUsuario">
				    </div>
				      <label for="inteTelefone" class="col-sm-1 col-form-label textForm">Telefone</label>
				    <div class="col-sm-4">
				      <input type="text" class="form-control" id="inteTelefone" placeholder="(00) 00000000" value="" name="telUsuario">
				    </div>		    
				</div>			
			 
			 
			  <div class="row p-2">
			  <button type="submit"  class="btn btn-warning text-white">Cadastrar Dados</button></div>
			</form>
			 </div>
			 <hr class ="linha">
			
			
			
    </div>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>