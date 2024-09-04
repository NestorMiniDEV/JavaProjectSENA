<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar datos</title>

<link rel="icon" type="image/x-icon" href="favicon.svg">

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Fuente de texto -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300..700&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="styles/styles.css">

</head>
<body>
	<header class="text-center p-3 p-lg-2">
            <img src="svg/logo-black-transparent.svg" alt="alt" style="max-height:50px;" type="image/svg+xml"/>
        </header>
		
	<nav class="navbar navbar-expand p-2 text-center text-white">
	  <div class="container-fluid">
	  	
	    <div class="navbar-collapse ms-5 text-white" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link text-white text-center" href="#">
                      <div class="row">
                          <div class="col-lg-auto">
                              <i class="bi bi-book-fill"></i>
                          </div>
                          <div class="col-lg-auto">    
                               MENÚ
                          </div>
                      </div>
                  </a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link text-white text-center" href="#">
                      <div class="row">
                          <div class="col-lg-auto">
                            <i class="bi bi-calendar-fill"></i>
                          </div>
                          <div class="col-lg-auto">
                            NOVEDADES
                          </div>
                      </div>
                  </a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link text-white text-center" href="#">
                      <div class="row">
                          <div class="col-lg-auto">
                            <i class="bi bi-cart-fill"></i>
                          </div>
                          <div class="col-lg-auto"> 
                            PEDIDOS
                          </div>
                      </div>
                  </a>
	        </li>
	      </ul>
	    </div>

		
	  	
	  	<div class="nav-item dropdown me-5">
	  		<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	          	<i class="bi bi-person-circle" style="font-size: 35px"></i>
	          </a>
	          <div class="dropdown-menu dropdown-menu-end">
	          	<span class="dropdown-item"><strong>${id}</strong></span>
	          	<hr>
	          	<a href="main.jsp" class="dropdown-item">Ver cuenta</a>
	          	<a href="index.jsp" class="dropdown-item">Cerrar sesión</a>
	          </div>
	  	</div>
	  	
	  </div>
	</nav>

	<main class="m-5 p-5 shadow rounded text-center">
	
		<h1><strong>ACTUALIZACIÓN DE DATOS</strong></h1>
		<hr>
	
		<form action="Controller" method="post">
			<div class="row mb-3 mt-3">
				<div class="col-sm-3">
					<label for="changeName">NOMBRE:</label>
				</div>
				<div class="col-sm-9">
					<input type="text" id="changeName" name="changeName" placeholder="Ingrese el nuevo nombre" class="form-control">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-sm-3">
					<label for="changeLastName">APELLIDO:</label>
				</div>
				<div class="col-sm-9">
					<input type="text" id="changeLastName" name="changeLastName" placeholder="Ingrese el nuevo apellido" class="form-control">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-sm-3">
					<label for="changeEmail">CORREO ELECTRÓNICO:</label>
				</div>
				<div class="col-sm-9">
					<input type="email" id="changeEmail" name="changeEmail" placeholder="Ingrese el nuevo correo" class="form-control" >
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-sm-3">
					<label for="changeDate">FECHA DE NACIMIENTO:</label>
				</div>
				<div class="col-sm-9">
					<input type="date" id="changeDate" name="changeDate" placeholder="Ingrese el nuevo correo" class="form-control">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-sm-3">
					<label for="changeNumber">TELÉFONO:</label>
				</div>
				<div class="col-sm-9">
					<input type="number" id="changeNumber" name="changeNumber" placeholder="Ingrese el nuevo número telefónico" class="form-control" >
				</div>
			</div>
			<div class="row mb-5">
				<div class="col-sm-3">
					<label for="changePassword">CONTRASEÑA:</label>
				</div>
				<div class="col-sm-9">
					<input type="text" id="changePassword" name="changePassword" placeholder="Ingrese la nueva contraseña" class="form-control" >
				</div>
			</div>
			
			<hr>
			
			<div class="row mb-3">
				<div class="col-sm-3">
					<label for="confirmId">NÚMERO DE DOCUMENTO:</label>
				</div>
				<div class="col-sm-9">
					<input type="number" id="confirmId" name="confirmId" placeholder="Ingrese su número de documento para la confirmación" class="form-control" >
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-6">
					<a href="Controller?action=ingresar" class="btn btn-danger">CANCELAR</a>
				</div>
				<div class="col-sm-6">
					<input type="submit" class="link rounded" name="action" value="ACTUALIZAR">
				</div>
			</div>
		</form>
	</main>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
</body>
</html>