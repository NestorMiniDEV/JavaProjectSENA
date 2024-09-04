<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ingresar</title>

<link rel="icon" type="image/x-icon" href="favicon.svg">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Fuente de texto -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300..700&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="styles/tabs.css">
<link rel="stylesheet" href="styles/primary.css">
<link rel="stylesheet" href="styles/styles.css">

</head>
<body>
	<!-- Hacer sección iniciar sesión hacer sección de registro -->
        
        <header class="text-center p-3 p-lg-2">
            <img src="svg/logo-black-transparent.svg" alt="alt" style="max-height:50px;" type="image/svg+xml"/>
        </header>

	<main class="container-fluid">
	<!-- Sign up -->
		<div class="signUp shadow rounded mt-5 m-auto p-4 text-white text-center show" style="width: 600px;">
				<h1><strong>INICIAR SESIÓN</strong></h1>
				<p><small>Ingresa los datos, para iniciar sesión.</small></p>
				<hr>
			<form action="Controller">
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for="idUser">Número de documento</label>
					</div>
					<div class="col-sm-9">
						<input autocomplete="name" type="number" id="idUser" name="idUser" placeholder="Ingrese su número de documento" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-3">
						<label for="passwordUser">Contraseña</label>
					</div>
					<div class="col-sm-9">
						<input type="password" id="passwordUser" name="passwordUser" placeholder="Ingrese su contraseña" class="form-control">
					</div>
				</div>
				<div class="row ">
					<div class="col-sm-6 mb-3">
						<a href="#" class="register link rounded">Registrarse</a>
					</div>
					<div class="col-sm-6">
						<input type="submit" class="btnIngresar send rounded" name="action" value="ingresar">
					</div>
				</div>
			</form>
		</div>
	<!-- Sign in -->
		<div class="signIn shadow rounded mt-5 m-auto p-4 text-white text-center " style="width: 600px">
			<h1><strong>REGISTRARSE</strong></h1>
			<p><small>Crea tu cuenta.</small></p>
			<hr>
			<form action="Controller">
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newIdUser>Número de documento</label>
					</div>
					<div class="col-sm-9">
						<input type="number" id="newIdUser" name="newIdUser" placeholder="Ingrese su número de documento" class="form-control">
					</div>
				</div>
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newNameUser>Nombre del Usuario</label>
					</div>
					<div class="col-sm-9">
						<input id="newNameUser" name="newNameUser" placeholder="Ingrese su nombre" class="form-control">
					</div>
				</div>
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newLastNameUser>Apellido del usuario</label>
					</div>
					<div class="col-sm-9">
						<input id="newLastNameUser" name="newLastNameUser" placeholder="Ingrese su Apellido" class="form-control">
					</div>
				</div>
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newEmailUser>Correo Electrónico</label>
					</div>
					<div class="col-sm-9">
						<input type="email" id="newEmailUser" name="newEmailUser" placeholder="Ingrese su Correo Electrónico" class="form-control">
					</div>
				</div>
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newDateUser>Fecha de nacimiento</label>
					</div>
					<div class="col-sm-9">
						<input type="date" id="newDateUser" name="newDateUser" class="form-control">
					</div>
				</div>
				<div class="row mb-3 mt-3">
					<div class="col-sm-3">
						<label for=newNumberUser>Número de teléfono</label>
					</div>
					<div class="col-sm-9">
						<input type="number" id="newNumberUser" name="newNumberUser" placeholder="Ingrese su número de teléfono" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-3">
						<label for="newPassworUser">Contraseña</label>
					</div>
					<div class="col-sm-9">
						<input type="password" id="newPasswordUser" name="newPasswordUser" placeholder="Ingrese una contraseña" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 mb-3">
						<a href="#" class="stSession link rounded">Iniciar sesión</a>
					</div>
					<div class="col-sm-6">
						<input type="submit" class="btnRegistrar send rounded" name="action" value="registrar">					
					</div>
				</div>
			</form>
		</div>
		
	</main>
	
	<script src="scripts/registerScreen.js"></script>
	<script src="scripts/showMessage.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
	
	<!-- Mensage error Usuario existente o no existente -->
	<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if(errorMessage != null){
	%>
	
	<script>
		errorAlert("<%= errorMessage %>");
	</script>
	
	<%		
		}
	%>}
	
	<!-- Mensage para usuario registado -->
	<%
		String passedMessage = (String) request.getAttribute("passedMessage");
		if(passedMessage != null){
	%>
	
	<script>
		newAccount("<%= passedMessage %>");
	</script>
	
	<% 
		}
	%>
	
	<!--Mensaje Usuario Eliminado -->
	<%
		String accountDeleted = (String) request.getAttribute("accountDeleted");
		if(accountDeleted != null){
	%>
	
	<script>
		deletedAccount("<%= accountDeleted %>");
	</script>
	
	<%		
		}
	%>
	
</body>
</html>