<?php
    require_once("../config/conexion.php");
    require_once("../models/Proveedor.php");
    $proveedor = new Proveedor();

    switch($_GET["op"]){
        case "combo":
            $datos = $proveedor->get_proveedor();
            if(is_array($datos)==true and count($datos)>0){
                foreach($datos as $row)
                {
                    $html.= "<option value='".$row['prov_id']."'>".$row['prov_nom']."</option>";
                }
                echo $html;
            }
        break;
    }
?>