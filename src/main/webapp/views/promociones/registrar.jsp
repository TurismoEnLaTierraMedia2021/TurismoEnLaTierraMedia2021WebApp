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
                <h3 class="col-12 mb-3 fuente">Crear una Promoción</h3>
                <form class="row g-3 needs-validation" novalidate>
                    
                    <div class="col-md-4">
                      <label for="nombre" class="form-label">Nombre</label>
                      <input type="text" class="form-control" id="nombre" placeholder="" required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>

                    <div class="col-md-4">
                      <label for="tipo" class="form-label">Tipo de Atracciones</label>
                      <select name="tipo" class="form-control" id="tipo">
                        <option value="aventura">Aventura</option>
                        <option value="degustacion" selected>Degustación</option>
                        <option value="paisaje">Paisaje</option>
                      </select required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>

                    <div class="col-md-4">
                        <label for="tipo_promo" class="form-label">Tipo de Promocion</label>
                        <select name="tipo_promo" class="form-control" id="tipo_promo">
                            <option value="axb">AxB</option>
                            <option value="absoluta" selected>Absoluta</option>
                            <option value="descuento">Descuento</option>
                        </select required>
                        <div class="invalid-feedback">
                            Este campo es requerido.
                        </div>
                    </div>

                    <div class="col-md-4">
                      <label for="costo" class="form-label">Costo</label>
                      <input type="text" class="form-control" name="costo" id="costo" required>
                      <div class="invalid-feedback">
                        Este campo es requerido.
                      </div>
                    </div>

                    <div class="col-md-4">
                        <label for="duracion" class="form-label">Duración</label>
                        <input type="text" class="form-control" id="duracion" name="duracion" required>
                        <div class="invalid-feedback">
                            Este campo es requerido.
                        </div>
                    </div>

                    <div class="col-md-4"></div>

                    <div class="col-md-4">
                        <div>
                            <label for="atracciones" class="form-label">Atracciones</label> 
                        </div>
                        <div class="atracciones">
                            <input type="checkbox" id="moria" name="moria atracciones" value="moria">
                            <label for="moria">Moria</label><br>
                            <input type="checkbox" id="la-comarca" name="la-comarca atracciones" value="la-comarca">
                            <label for="la-comarca">La Comarca</label><br>
                            <input type="checkbox" id="minas-tirith" name="minas-tirith atracciones" value="minas-tirith">
                            <label for="minas-tirith">Monas Tirith</label><br>
                            <input type="checkbox" id="mordor" name="mordor atracciones" value="mordor">
                            <label for="mordor">Mordor</label>
                        </div>
                    </div>

                    <div class="col-12">
                      <button class="btn  btn-miPrincipal" type="submit">Guardar</button>
                    </div>
                </form>
            </div>
			
		</section>
	</div>
	
	
	
	<jsp:include page="/partials/footer.jsp"></jsp:include>
	
</body>
	<script src="/TurismoEnLaTierraMedia2021WebApp/assets/javascript/main.js"></script>
</html>