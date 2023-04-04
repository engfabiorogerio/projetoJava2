<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Projeto Java #1</title>
<style type="text/css">
	
		h1 {
		
			margin-top: 3%;
			text-align: center;
		
		}
	
		div {
			margin: 10% 25% 0 28%;
			
		}
		
		#inlineFormInputName2, #inlineFormInputGroupUsername2 {
			width: 300px;
		}
		
		#inlineFormInputName2:hover {
			background-color: yellow;
			cursor: pointer;
		}
		
								
		#inlineFormInputGroupUsername2:hover {
			background-color: yellow;
			cursor: pointer;
		}
		
				
		#botao{
			margin-top: 10px;
			margin-left: 80px;
			width: 140px;
			color: yellow;
			
		}
		
		#botao:hover{
			font-weight: bold;
		}
		
		h4 {
		
			text-align: center;
			color: red;
		
		}
	
	</style>
</head>
<body>
		
		<h1>Formulário Login</h1>
	<div class="tudo">
	<form action="<%= request.getContextPath() %>/ServletLogin" method="post" class="form-inline needs-validation" novalidate >
		<input type="hidden" value="<%=request.getParameter("url")%>"
			name="url">
		
			<div id="inputText">
			
				<label class="sr-only" for="inlineForInputName2">Login</label>
				<input name="login" type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" required="required" placeholder="Login">
				<div class="invalid-feedback">
        			Login Necessário!
     			 </div>
			
				<label class="sr-only" for="inlineFormInputGroupUsername2">Senha</label>
				<input name="senha" type="password" class="form-control" required="required" id="inlineFormInputGroupUsername2" placeholder="Senha">
				<div class="invalid-feedback">
        			Senha Necessário!
     			 </div>
			
				<input type="submit" value="enviar" class="btn btn-primary mb-2" id="botao">
			
			
			</div>
				

	</form>
	<h4>${msg }</h4>
	
	</div>
	

	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
		
		<script>
// Exemplo de JavaScript inicial para desativar envios de formulário, se houver campos inválidos.
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Pega todos os formulários que nós queremos aplicar estilos de validação Bootstrap personalizados.
    var forms = document.getElementsByClassName('needs-validation');
    // Faz um loop neles e evita o envio
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

</body>
</html>