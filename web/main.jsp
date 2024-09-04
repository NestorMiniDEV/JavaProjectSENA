<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Información</title>

<link rel="icon" type="image/x-icon" href="favicon.svg">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Fuente de texto -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300..700&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="styles/primary.css">
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
	
		
	<main>
		<div class="row rounded shadow m-5 p-5 ">
			<div class="col-lg-4 text-center">
				<i class="bi bi-person-circle" style="font-size: 80px"></i>
			</div>
                    
			<div class="col-lg-7">
                                
                            <ul>
                                
                                <% if (request.getAttribute("usuario") != null){ %>
                                <p>Documento: ${usuario.id}</p>
                                <p>Nombre: ${usuario.nombre}</p>
                                <p>Apellido: ${usuario.apellido}</p>
                                <p>Correo electrónico: ${usuario.correo}</p>
                                <p>Fecha de Nacimiento: ${usuario.fechaNacimiento}</p>
                                <p>Número de teléfono: ${usuario.telefono}</p>
                                <% } %>
                                
                                
                            </ul>
				
				<div class="text-center">				
					<div class="mb-3">
						<a class="link rounded" href="Controller?action=update">ACTUALIZAR DATOS</a>
					</div>
					<div>			
						<a class="btn btn-danger" href="Controller?action=delete">ELIMINAR CUENTA</a>
					</div>
				</div>
				
			</div>
		</div>
	</main>
	
	<script src="scripts/showMessage"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	 
	 <!-- Mensaje Datos Actualizados -->
	 <%
		String accountUpdated = (String) request.getAttribute("accountUpdated");
		if(accountUpdated != null){
	%>
	
	<script>
		updatedAccount("<%= accountUpdated %>");
	</script>
	
	<%		
		}
	%>
	 
</body>
</html>