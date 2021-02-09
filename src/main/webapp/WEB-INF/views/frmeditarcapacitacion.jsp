<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Capacitacion</title>
	<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilos.css' />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Questrial&family=Sansita+Swashed&display=swap">
    <link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@600&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/Jquery.js'></script>
	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/JavaScript.js'></script>
</head>

<body>

<header>
		<div class="menu_bar">
			<a href="#" class="bt-menu"><i class="fas fa-ellipsis-v"></i>Men�</a>
		</div>
		<nav>
			<ul>
				<li><a href="<%=request.getContextPath()%>/"><i class="fas fa-home"></i>Inicio</a></li>
				<li><a href="<%=request.getContextPath()%>/login"><i class="fas fa-sign-in-alt"></i>Ingresar</a></li>
				<li class="submenu"><a href="#"><i class="fas fa-users"></i>Usuarios<i class="caret fas fa-angle-down"></i></a>
					<ul class="children">
						<li><a href="<%=request.getContextPath()%>/crearusuario">Crear Usuarios</a></li>
						<li><a href="<%=request.getContextPath()%>/listarusuario">Listado Usuario</a></li>
					</ul>
				</li>	
				<li class="submenu"><a href="#"><i class="fas fa-user-graduate"></i>Capacitaciones<i class="caret fas fa-angle-down"></i></a>
					<ul class="children">
						<li><a href="<%=request.getContextPath()%>/crearcapacitacion">Crear Capacitacion</a></li>
						<li><a href="<%=request.getContextPath()%>/listarcapacitacion">Listado Capacitaciones</a></li>
					</ul>
				</li>
				<li><a href="#"><i class="fas fa-book-reader"></i>Asistentes</a></li>
				<li><a href="#"><i class="fas fa-handshake"></i>Visita a Terreno</a></li>
				<li><a href="<%=request.getContextPath()%>/checklist"><i class="fas fa-exclamation-triangle"></i>Checklist</a></li>
				<li class="submenu"><a href="#"><i class="fas fa-donate"></i>Pagos<i class="caret fas fa-angle-down"></i></a>
					<ul class="children">
						<li><a href="<%=request.getContextPath()%>/crearpagos">Crear Pago</a></li>
						<li><a href="<%=request.getContextPath()%>/listarpagos">Listado Pago</a></li>
					</ul></li>
				<li class="submenu"><a href="#"><i class="far fa-comments"></i>Asesorias<i class="caret fas fa-angle-down"></i></a>
					<ul class="children">
						<li><a href="#">Crear Asesoria</a></li>
						<li><a href="#">Listado Asesoria</a></li>
					</ul></li>
				<li><a href="#"><i class="far fa-file-alt"></i>Reportes</a></li>
				<li><a href="<%=request.getContextPath()%>/contacto"><i class="fas fa-envelope"></i>Contacto</a></li>
				<li><a href="<%=request.getContextPath()%>/logout"><i class="fas fa-times-circle"></i>Cerrar Sesion</a></li>
			</ul>
		</nav>
	</header>

	<div class="container-banner">
		<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/img/empresa.jpg'> 
	</div>
<br/>
 <div class="container">
 	<br>
    <br>
    <!--<c:forEach items="${lcapacitacion}" var="mycapa"> </c:forEach>   -->
    <h2>Editar Capacitaci�n</h2><br>
    	<form action='<c:out value= "${pageContext.request.contextPath}"/>/procesaeditarcapa' method="POST">
			<div class="mb-3">
				<label for="idcapacitacion" class="form-label">ID</label> 
				<input type="number" class="form-control" id="idcapacitacion"  value='<c:out value="${mycapa.getIdcapacitacion()}"/>' readonly="readonly" name="idcapacitacion" placeholder="101">
			</div>
			<div class="mb-3">
				<label for="capfecha" class="form-label">Fecha</label> 
				<input type="date" class="form-control" id="capfecha" value='<c:out value="${mycapa.getCapfecha()}"/>' name="capfecha" placeholder="06/12/21">
			</div>
			<div class="mb-3">
				<label for="caphora" class="form-label">Hora</label> 
				<input type="time" class="form-control" id="caphora" value='<c:out value="${mycapa.getCaphora()}"/>' name="caphora" placeholder="15:30">
			</div>
			<div class="mb-3">
				<label for="caplugar" class="form-label">Lugar</label> 
				<input type="text" class="form-control" id="caplugar" value='<c:out value="${mycapa.getCaplugar()}"/>' name="caplugar" placeholder="Providencia">
			</div>
			<div class="mb-3">
				<label for="capduracion" class="form-label">Duracion</label> 
				<input type="number" class="form-control" id="capduracion" value='<c:out value="${mycapa.getCapduracion()}"/>' name="capduracion" placeholder="120">
			</div>
			<div class="mb-3">
				<label for="cliente_rutcliente" class="form-label">Rut Cliente</label> 
				<input type="number" class="form-control" id="cliente_rutcliente" value='<c:out value="${mycapa.getCliente_rutcliente()}"/>' name="cliente_rutcliente" readonly="readonly">
			</div>
			
			 <div class="col-12">
    			<button type="submit" class="btn btn-primary">Editar Capacitacion</button>
  			</div>
		</form>
		
	</div>
	<br/>
	<br/>
    
</body>
</html>