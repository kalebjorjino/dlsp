<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["us_id"])){ 
?>
<!DOCTYPE html>
<html>
    <?php require_once("../MainHead/head.php");?>
	<title>PMAC-AU::Consultar Registro</title>
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
							<h3>Consultar Registro</h3>
							<ol class="breadcrumb breadcrumb-simple">
								<li><a href="#">Home</a></li>
								<li class="active">Consultar Registro</li>
							</ol>
						</div>
					</div>
				</div>
			</header>

			<div class="box-typical box-typical-padding">
				<table id="registro_data" class="table table-bordered table-striped table-vcenter js-dataTable-full">
					<thead>
						<tr>
							<th style="width: 2%;">Nro.Registro</th>
							<th style="width: 2%;">USUARIO</th>
							<th style="width: 2%;">FECHA (DD//MM/AA)</th>
							<th class="d-none d-sm-table-cell" style="width: 40%;">PROYECTO</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">PROVEEDOR</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">OTRO PROVEEDOR</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">N° DE DOCUMENTO</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">CODIGO CONT</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">BENEFICIARIO</th>
							<th class="d-none d-sm-table-cell" style="width: 40%;">N° COBENEFICIARIOS</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">CARGO</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">COMPONENTE</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">ACTIVIDAD 1</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">NOMBRE DE CUENTA</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">LUGAR DE GASTOS</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">TIPO DE GASTOS</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">RUBRO/SERVICIO</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">CONCEPTO DE GASTOS</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">MONTO GASTADO</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">DESCRIPCION</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">ESTADO</th>
							<th class="d-none d-sm-table-cell" style="width: 2%;">FECHA DE CREACION </th>

						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	<!-- Contenido -->

	<?php require_once("../MainJs/js.php");?>
	
	<script type="text/javascript" src="consultaregistro.js"></script>

</body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>