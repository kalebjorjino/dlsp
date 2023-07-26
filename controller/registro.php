<?php
    require_once("../config/conexion.php");
    require_once("../models/Registro.php");
    $registro = new Registro();

    switch($_GET["op"]){
        case "insert":
                $registro->insert_registro($_POST["us_id"],$_POST["reg_fech"],$_POST["pry_id"],$_POST["prov_id"],$_POST["reg_prov"],$_POST["reg_doc"],$_POST["cod_id"],$_POST["beni_id"],$_POST["cobe_id"],$_POST["carg_id"],$_POST["comp_id"],$_POST["acti_id"],$_POST["cuent_id"],$_POST["lgst_id"],$_POST["tgst_id"],$_POST["serv_id"],$_POST["cong_id"],$_POST["reg_monto"],$_POST["reg_descrip"]);     
        break;

      //colocar los campos en el datatable que seran visibles
        case "listar_x_us":
            $datos=$registro->listar_registro_x_us($_POST["us_id"]);
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["reg_id"];
                $sub_array[] = $row["us_correo"];
                $sub_array[] = $row["reg_fech"];
                $sub_array[] = $row["pry_nom"];
                $sub_array[] = $row["prov_nom"];
                $sub_array[] = $row["reg_prov"];
                $sub_array[] = $row["reg_doc"];
                $sub_array[] = $row["cod_nom"];
                $sub_array[] = $row["beni_nom"];
                $sub_array[] = $row["cobe_nom"];
                $sub_array[] = $row["carg_nom"];
                $sub_array[] = $row["comp_nom"];
                $sub_array[] = $row["acti_nom"];
                $sub_array[] = $row["cuent_nom"];
                $sub_array[] = $row["lgst_nom"];
                $sub_array[] = $row["tgst_nom"];
                $sub_array[] = $row["serv_nom"];
                $sub_array[] = $row["cong_nom"];
                $sub_array[] = $row["reg_monto"];
                $sub_array[] = $row["reg_descrip"];

                if ($row["reg_estado"]=="Activo"){
                    $sub_array[] = '<span class="label label-pill label-success">Activo</span>';
                }else{
                    $sub_array[] = '<span class="label label-pill label-danger">No Activo</span>';
                }

                $sub_array[] = date("d/m/Y H:i:s", strtotime($row["fech_crea"]));
                $sub_array[] = '<button type="button" onClick="editar('.$row["reg_id"].');"  id="'.$row["reg_id"].'" class="btn btn-inline btn-warning btn-sm ladda-button"><i class="fa fa-edit"></i></button>';
                $sub_array[] = '<button type="button" onClick="eliminar('.$row["reg_id"].');"  id="'.$row["reg_id"].'" class="btn btn-inline btn-danger btn-sm ladda-button"><i class="fa fa-trash"></i></button>';
                $data[] = $sub_array;
            }
            $results = array(
                "sEcho"=>1,
                "iTotalReconds"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);
        break;

        case "listar":
            $datos=$registro->listar_registro();
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["reg_id"];
                $sub_array[] = $row["us_correo"];
                $sub_array[] = $row["reg_fech"];
                $sub_array[] = $row["pry_nom"];
                $sub_array[] = $row["prov_nom"];
                $sub_array[] = $row["reg_prov"];
                $sub_array[] = $row["reg_doc"];
                $sub_array[] = $row["cod_nom"];
                $sub_array[] = $row["beni_nom"];
                $sub_array[] = $row["cobe_nom"];
                $sub_array[] = $row["carg_nom"];
                $sub_array[] = $row["comp_nom"];
                $sub_array[] = $row["acti_nom"];
                $sub_array[] = $row["cuent_nom"];
                $sub_array[] = $row["lgst_nom"];
                $sub_array[] = $row["tgst_nom"];
                $sub_array[] = $row["serv_nom"];
                $sub_array[] = $row["cong_nom"];
                $sub_array[] = $row["reg_monto"];
                $sub_array[] = $row["reg_descrip"];

                if ($row["reg_estado"]=="Activo"){
                    $sub_array[] = '<span class="label label-pill label-success">Activo</span>';
                }else{
                    $sub_array[] = '<span class="label label-pill label-danger">No Activo</span>';
                }

                $sub_array[] = date("d/m/Y H:i:s", strtotime($row["fech_crea"]));
                $sub_array[] = '<button type="button" onClick="editar('.$row["reg_id"].');"  id="'.$row["reg_id"].'" class="btn btn-inline btn-warning btn-sm ladda-button"><i class="fa fa-edit"></i></button>';
                $sub_array[] = '<button type="button" onClick="eliminar('.$row["reg_id"].');"  id="'.$row["reg_id"].'" class="btn btn-inline btn-danger btn-sm ladda-button"><i class="fa fa-trash"></i></button>';
                $data[] = $sub_array;
            }
            $results = array(
                "sEcho"=>1,
                "iTotalReconds"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);
        break;

    
    }
?>

        