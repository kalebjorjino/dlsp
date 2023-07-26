<?php
    require_once("../config/conexion.php");
    require_once("../models/Proveedorreg.php");
    $proveedorreg = new Proveedorreg();
  
    switch($_GET["op"]){
        case "guardaryeditar":
            if(empty($_POST["prov_id"])){       
                $proveedorreg->insert_proveedor($_POST["prov_nom"]);     
            }
            else {
                $proveedorreg->update_proveedor($_POST["prov_id"],$_POST["prov_nom"]);
            }
        break;

        
      //colocar los campos en el datatable que seran visibles
       
        case "listar":
            $datos=$proveedorreg->get_proveedor();
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["prov_id"];
                $sub_array[] = $row["prov_nom"];

                $sub_array[] = '<button type="button" onClick="editar('.$row["prov_id"].');"  id="'.$row["prov_id"].'" class="btn btn-inline btn-warning btn-sm ladda-button"><i class="fa fa-edit"></i></button>';
                $sub_array[] = '<button type="button" onClick="eliminar('.$row["prov_id"].');"  id="'.$row["prov_id"].'" class="btn btn-inline btn-danger btn-sm ladda-button"><i class="fa fa-trash"></i></button>';
    
                $data[] = $sub_array;
            }
            $results = array(
                "sEcho"=>1,
                "iTotalReconds"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);
        break;

        case "eliminar":
            $proveedorreg->delete_proveedor($_POST["prov_id"]);
        break;

        case "mostrar";
        $datos=$proveedorreg->get_proveedor_x_id($_POST["prov_id"]);  
        if(is_array($datos)==true and count($datos)>0){
            foreach($datos as $row)
            {
                $output["prov_id"] = $row["prov_id"];
                $output["prov_nom"] = $row["prov_nom"];
        
            }
            echo json_encode($output);
        }   
    break;
        
    
    }
?>
