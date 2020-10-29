<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Usuário</title>
<link rel="stylesheet" href="resource/css/Cadastro.css">
</head>
<body>
	<h1>CADASTRO USUÁRIO</h1>

	<form action="salvarUsuario" method="post" id="fomrUser">
		<ul class="form-style-1">
			<li>
				<table>
					<tr>
						<td>Código:</td>
						<td><input type="text" readonly="readonly" id="id" name="id"
							value="${user.id }" class="field-long"></td>
					</tr>
					<tr>
						<td>Login:</td>
						<td><input type="text" id="login" name="login"
							value="${user.login }"></td>
					</tr>

					<tr>
						<td>Senha:</td>
						<td><input type="password" id="senha" name="senha"
							value="${user.senha }"></td>
					</tr>
					
					<tr>
						<td>Nome:</td>
						<td><input type="text" id="nome" name="nome"
							value="${user.nome }"></td>
					</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Salvar"><input type="submit" value="Cancelar" onclick="document.getElementById('fomrUser').action = 'salvarUsuario?acao=reset'"></td>
				</tr> 
				</table>
			</li>
		</ul>
	</form>
	
	<div class="container">

	<table class="responsive-table">
	 <caption>USUARIOS CADASTRADO</caption>
	 <tr>
	 	<th>ID</th>
	 	<th>LOGIN</th>
	 	<th>NOME</th>
	 	<th>EXCLUIR</th>
	 	<th>EDITAR</th>
	 
	 </tr>
		<c:forEach items="${usuarios}" var="user">
			<tr>
				<td style="width: 150px"><c:out value="${user.id}"></c:out></td>
				<td style="width: 150px"><c:out value="${user.login}"></c:out></td>
				<td style="width: 150px"><c:out value="${user.nome}"></c:out></td>

				<td><a href="salvarUsuario?acao=delete&user=${user.id}"><img src="resource/img/excluir.png" alt="Excluir" title="Excluir" width="20px" height="20px"></a></td>
				<td><a href="salvarUsuario?acao=editar&user=${user.id}"><img src="resource/img/edit-validated.png" alt="Editar" title="Editar" width="20px" height="20px"></a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>