<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["us_id"])){ 
?>
<!DOCTYPE html>
<html>
    <?php require_once("../MainHead/head.php");?>
	<title>PMAC-AU</title>
</head>
<body class="with-side-menu">

    <?php require_once("../MainHeader/header.php");?>

    <div class="mobile-menu-left-overlay"></div>
    
    <?php require_once("../MainNav/nav.php");?>

	<!-- Contenido -->
	<div class="page-content">
		<div class="container-fluid">

			<header class="section-header">
				<div class="tbl">
					<div class="tbl-row">
						<div class="tbl-cell">
							<h3>REGISTRO PMAC-AU</h3>
							<ol class="breadcrumb breadcrumb-simple">
								<li><a href="#">Home</a></li>
								<li class="active">Nuevo registro de datos</li>
							</ol>
						</div>
					</div>
				</div>
			</header>

			<div class="box-typical box-typical-padding">
				<p>
					Desde esta ventana podra generar nuevos registros.
				</p>

				<h5 class="m-t-lg with-border">Ingresar Información</h5>

				<div class="row g-2">
					<form method="post" id="registro_form">

						<input type="hidden" id="us_id" name="us_id" value="<?php echo $_SESSION["us_id"] ?>">

							<fieldset class="form-group">
							<div class="col-lg-2">
								<label class="form-label semibold" for="reg_fech">FECHA (DD//MM/AA)</label>
								</div>
								<div class="col-lg-2">
								<input type="date" class="form-control" id="reg_fech" name="reg_fech" placeholder="Ingrese Fecha...">
								</div>
							</fieldset>

							<fieldset class="form-group">
							<div class="col-lg-2">
								<label class="form-label semibold" for="exampleInput">PROYECTO</label>
								</div>
								<div class="col-lg-2">
								<select id="pry_id" name="pry_id" class="form-control">
									</div>
								</select>
							</fieldset>
						

                     
						<div class="col-lg-4">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">PROVEEDOR</label>
								<select id="prov_id" name="prov_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-4">
						<fieldset class="form-group">
								<label class="form-label semibold" for="reg_prov">OTRO PROVEEDOR</label>
								<input type="text" class="form-control" id="reg_prov" name="reg_prov" placeholder="Ingrese otro proveedor...">
							</fieldset>
						</div>

						<div class="col-lg-2">
						<fieldset class="form-group">
								<label class="form-label semibold" for="reg_doc">N° DE DOCUMENTO</label>
								<input type="number" class="form-control" id="reg_doc" name="reg_doc" placeholder="Ingrese numero de documento...">
							</fieldset>
						</div>
						<br>

						<fieldset class="form-group">
							<div class="col-lg-6">
								<label class="form-label semibold" for="exampleInput">CODIGO CONT</label>
								</div>
								<div class="col-lg-6">
								<select id="cod_id" name="cod_id" class="form-control">
									</div>
								</select>
							</fieldset>
						
							<div class="col-lg-4">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">BENEFICIARIO</label>
								<select id="beni_id" name="beni_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-2">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">N° COBENEFICIARIOS</label>
								<select id="cobe_id" name="cobe_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-4">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">CARGO</label>
								<select id="carg_id" name="carg_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-6">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">COMPONENTE</label>
								<select id="comp_id" name="comp_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-6">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">ACTIVIDAD 1</label>
								<select id="acti_id" name="acti_id" class="form-control">
								</select>
							</fieldset>
						</div>

						<div class="col-lg-12">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">NOMBRE DE CUENTA</label>
								<select id="cuent_id" name="cuent_id" class="form-control">
								</select>
							</fieldset>
						</div>
						
						<div class="form-group col-md-4">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">LUGAR DE GASTOS</label>
								<select id="lgst_id" name="lgst_id" class="form-control">
									
								</select>
							</fieldset>
						</div>

						<div class="form-group col-md-2">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">TIPO DE GASTOS</label>
								<select id="tgst_id" name="tgst_id" class="form-control">
									
								</select>
							</fieldset>
						</div>

						<div class="form-group col-md-4">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">RUBRO/SERVICIO</label>
								<select id="serv_id" name="serv_id" class="form-control">
									
								</select>
							</fieldset>
						</div>

						<div class="form-group col-md-6">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">CONCEPTO DE GASTOS</label>
								<select id="cong_id" name="cong_id" class="form-control">
									
								</select>
							</fieldset>
						</div>
						<div class="col-lg-4">
						<fieldset class="form-group">
								<label class="form-label semibold" for="reg_monto">MONTO GASTADO</label>
								<input type="text" class="form-control" id="reg_monto" name="reg_monto" placeholder="Ingrese monto...">
							</fieldset>
						</div>
						<br>


						
						<div class="col-lg-12">
							<fieldset class="form-group">
								<label class="form-label semibold" for="reg_descrip">Descripción</label>
								<div class="summernote-theme-1">
									<textarea id="reg_descrip" name="reg_descrip" class="summernote" name="name"></textarea>
								</div>
							</fieldset>
						</div>
						<div class="col-lg-12">
							<button type="submit" name="action" value="add" class="btn btn-rounded btn-inline btn-primary">Guardar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- Contenido -->

	<?php require_once("../MainJs/js.php");?>
	
	<script type="text/javascript" src="nuevoregistro.js"></script>

	</body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>