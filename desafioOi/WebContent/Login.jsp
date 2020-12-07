<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
    
<head>
	<title>Buscando o meu trofeu</title>
	<link rel ="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

 <script src="./resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>

<body>
<script>

 function statusChangeCallback(response) {
 console.log('statusChangeCallback');
 console.log(response);
 console.log(response.authResponse.accessToken);

 if (response.status === 'connected') {
 window.location.href='	LoginJogo.jsp?access_token='+response.authResponse.accessToken; 
 } else {
 
 document.getElementById('status').innerHTML = 'Please log ' +
 'into this app.';
 }
 }
 
 function checkLoginState() {
 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 }
 window.fbAsyncInit = function() {
 FB.init({
 appId : '1018327995339925',
 cookie : true, 

 xfbml : true, 
 version : 'v2.8' // use graph api version 2.8
 });
 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 };
 // Load the SDK asynchronously
 (function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "https://connect.facebook.net/en_US/sdk.js";
 fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v9.0&appId=1018327995339925&autoLogAppEvents=1" nonce="xFIuYDtL"></script>

	<div class="sectio">
		<div class= "row pt-2">
		  <div class= "col">
		 
		            <div class="col">
						<center><img src="img/logoOI2.fw.png" class="rounded" alt="Logo" ><center>
					</div>
					<div class = "boxForm" > <!-- Box do form -->
		             <form class = "formEntrada pt-5">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="" class="form-control input_user" value="" placeholder="nome do usuário">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="" class="form-control input_pass" value="" placeholder="senha do usuario">
						</div>
						
							<div class="row">
								<div class="col-auto mr-auto">
								     <span class="text-left"><a href="#" class="linkText">Lembrar senha</a></span>
								</div>
								<div class="col-auto">
								      <span class="text-right"><a href="CadastrarNovo.jsp" class="linkText">Não tem cadastro? </a></span>
								</div>								
							</div>
						
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="button" name="button" class="btn btn-warning text-light">Acessar</button>
				 	
				   </div>
				  
				   <p class="text-center text-light">ou</p>

				<div id="fb-root" class="pt-1"></div>
				<div class ="row justify-content-md-center">
				<div class="fb-login-button" align="center" scope="public_profile,email" onlogin="checkLoginState();" data-size="large" data-button-type="continue_with" data-layout="rounded" data-auto-logout-link="false" data-use-continue-as="true" data-width=""></div>
				</div>
				<div id="status">
				</div>				   
			</form>
			</div><!-- Fim box do form -->
			
		   </div>
		 
		</div>
	</div>
</body>
</html>
