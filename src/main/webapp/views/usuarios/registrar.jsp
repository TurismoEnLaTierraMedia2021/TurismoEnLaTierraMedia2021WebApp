<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body class="light-theme">
	
	<jsp:include page="/partials/nav.jsp"></jsp:include>
	
	<div class="flex container">
		<section class="mt-5">

			<div class="lista text-center mt-5">
                <h3 class="col-12 mb-3 fuente">Registrar un Usuario</h3>
                <form class="row g-3 needs-validation" action="/usuario/crear" method="post" novalidate>
                    <div class="col-md-4">
                      <label for="nombre" class="form-label">Nombre</label>
                      <input type="text" class="form-control" id="nombre" name="" placeholder="Frodo" required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>
                    <div class="col-md-4">
                      <label for="presupuesto" class="form-label">Dinero</label>
                      <input type="number" class="form-control" name="presupuesto" id="presupuesto" value="" placeholder="Ingrese cantidad de dinero disponible" required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>                    
                    <div class="col-md-4">
                      <label for="tiempoDispobible" class="form-label">Tiempo</label>                                         
                       <input type="number" class="form-control" id="tiempoDispobible" name="tiempoDispobible" aria-describedby="inputGroupPrepend" required>
                        <div class="invalid-feedback">
                            Este campo es requerido.
                          </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <label for="admin" class="form-label">Admin</label>
                      <input type="text" class="form-control" id="admin" name="admin" required>
                      <div class="invalid-feedback">
                        Este campo es requerido
                      </div>
                    </div>
<!--                     <div class="col-md-8">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="frodo@lacomarca.com" required pattern="^[^@]+@[^@]+.[a-zA-Z]{2,}$">
                        <div class="invalid-feedback">
                          Email no valido.
                        </div>
                    </div> -->
                    <div class="col-md-4">
                      <label for="tipoDeAtraccion" class="form-label">Tipo de Atracciones</label>
                      <select name="tipoDeAtraccion" class="form-control" id="tipoDeAtraccion">
                        <option value="aventura">Aventura</option>
                        <option value="degustacion" selected>Degustación</option>
                        <option value="paisaje">Paisaje</option>
                      </select required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>
                    <div class="col-md-4">
                        <label for="contraseña" class="form-label">Contraseña</label>
                        <input type="email" class="form-control" id="contraseña" required minlength="8" maxlength="20">
                        <div class="invalid-feedback">
                          Contraseña invalidad, debe tener entre 8 y 20 caracteres.
                        </div>
                    </div>
<!--                     <div class="col-md-4">
                        <label for="repContraseña" class="form-label">Repetir Contraseña</label>
                        <input type="email" class="form-control" id="repContraseña" required minlength="8" maxlength="20">
                        <div class="invalid-feedback">
                          La contraseña no coincide,
                        </div>
                    </div> -->
					<div class="col-md-4">
                        <label for="path_img" class="form-label">Imagen</label>
                        <input type="file" class="form-control" name="path_img" id="path_img">
                    </div>
                    <div class="col-12">
                      <button class="btn  btn-miPrincipal" type="submit">Registrarse</button>
                    </div>
                  </form>
            </div>
			
		</section>
	</div>
	
	
	<jsp:include page="/partials/footer.jsp"></jsp:include>
	
</body>
	<script src="/TurismoEnLaTierraMedia2021WebApp/assets/javascript/main.js"></script>
</html>