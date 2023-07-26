<?php
    class Registro extends Conectar{

        public function insert_registro($us_id,$reg_fech,$pry_id,$prov_id,$reg_prov,$reg_doc,$cod_id,$beni_id,$cobe_id,$carg_id,$comp_id,
        $acti_id,$cuent_id,$lgst_id,$tgst_id,$serv_id,$cong_id,$reg_monto,$reg_descrip){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_registro (reg_id,us_id,reg_fech,pry_id,prov_id,reg_prov,reg_doc,cod_id,beni_id,cobe_id,carg_id,comp_id,acti_id,cuent_id,lgst_id,
            tgst_id,serv_id,cong_id,reg_monto,reg_descrip,reg_estado,fech_crea,est) VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'Activo',now(),'1');"; 
            $sql=$conectar->prepare($sql);
            
            $sql->bindValue(1, $us_id);

            $sql->bindValue(2, $reg_fech);

            $sql->bindValue(3, $pry_id);

            $sql->bindValue(4, $prov_id);

            $sql->bindValue(5, $reg_prov);

            $sql->bindValue(6, $reg_doc);

            $sql->bindValue(7, $cod_id);
           
            $sql->bindValue(8, $beni_id);

            $sql->bindValue(9, $cobe_id);

            $sql->bindValue(10, $carg_id);

            $sql->bindValue(11, $comp_id);

            $sql->bindValue(12, $acti_id);

            $sql->bindValue(13, $cuent_id);

            $sql->bindValue(14, $lgst_id);

            $sql->bindValue(15, $tgst_id);

            $sql->bindValue(16, $serv_id);

            $sql->bindValue(17, $cong_id);

            $sql->bindValue(18, $reg_monto);


            $sql->bindValue(19, $reg_descrip);

            $sql->execute();

            return $resultado=$sql->fetchAll();
        }


    public function listar_registro_x_us($us_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT 
            tm_registro.reg_id,
            tm_registro.us_id,
            tm_registro.reg_fech,
            tm_registro.pry_id,
            tm_registro.prov_id,
            tm_registro.reg_prov,
            tm_registro.reg_doc,
            tm_registro.cod_id,
            tm_registro.beni_id,
            tm_registro.cobe_id,
            tm_registro.carg_id,
            tm_registro.comp_id,
            tm_registro.acti_id,
            tm_registro.cuent_id,
            tm_registro.lgst_id,
            tm_registro.tgst_id,
            tm_registro.serv_id,
            tm_registro.cong_id,
            tm_registro.reg_monto,
            tm_registro.reg_descrip,
            tm_registro.reg_estado,
            tm_registro.fech_crea,
            tm_usuario.us_correo,
            tm_usuario.us_ap,
            tm_proyecto.pry_nom,
            tm_proveedor.prov_nom,
            tm_codigo.cod_nom,
            tm_beneficiario.beni_nom,
            tm_cobeneficiarios.cobe_nom,
            tm_cargo.carg_nom,
            tm_componente.comp_nom,
            tm_actividad.acti_nom,
            tm_cuenta.cuent_nom,
            tm_lgastos.lgst_nom,
            tm_tgastos.tgst_nom,
            tm_servicio.serv_nom,
            tm_con_gastos.cong_nom
            FROM 
            tm_registro
            INNER join tm_proyecto on tm_registro.pry_id = tm_proyecto.pry_id
            INNER join tm_proveedor on tm_registro.prov_id = tm_proveedor.prov_id
            INNER join tm_codigo on tm_registro.cod_id = tm_codigo.cod_id
            INNER join tm_beneficiario on tm_registro.beni_id = tm_beneficiario.beni_id
            INNER join tm_cobeneficiarios on tm_registro.cobe_id = tm_cobeneficiarios.cobe_id
            INNER join tm_cargo on tm_registro.carg_id = tm_cargo.carg_id
            INNER join tm_componente on tm_registro.comp_id = tm_componente.comp_id
            INNER join tm_actividad on tm_registro.acti_id = tm_actividad.acti_id
            INNER join tm_cuenta on tm_registro.cuent_id = tm_cuenta.cuent_id
            INNER join tm_lgastos on tm_registro.lgst_id = tm_lgastos.lgst_id
            INNER join tm_tgastos on tm_registro.tgst_id = tm_tgastos.tgst_id
            INNER join tm_servicio on tm_registro.serv_id = tm_servicio.serv_id
            INNER join tm_con_gastos on tm_registro.cong_id = tm_con_gastos.cong_id
            INNER join tm_usuario on tm_registro.us_id = tm_usuario.us_id
            WHERE
            tm_registro.est = 1
            AND tm_usuario.us_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $us_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }

    public function listar_registro(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT 
             tm_registro.reg_id,
            tm_registro.us_id,
            tm_registro.reg_fech,
            tm_registro.pry_id,
            tm_registro.prov_id,
            tm_registro.reg_prov,
            tm_registro.reg_doc,
            tm_registro.cod_id,
            tm_registro.beni_id,
            tm_registro.cobe_id,
            tm_registro.carg_id,
            tm_registro.comp_id,
            tm_registro.acti_id,
            tm_registro.cuent_id,
            tm_registro.lgst_id,
            tm_registro.tgst_id,
            tm_registro.serv_id,
            tm_registro.cong_id,
            tm_registro.reg_monto,
            tm_registro.reg_descrip,
            tm_registro.reg_estado,
            tm_registro.fech_crea,
            tm_usuario.us_correo,
            tm_usuario.us_ap,
            tm_proyecto.pry_nom,
            tm_proveedor.prov_nom,
            tm_beneficiario.beni_nom,
            tm_cobeneficiarios.cobe_nom,
            tm_cargo.carg_nom,
            tm_componente.comp_nom,
            tm_actividad.acti_nom,
            tm_cuenta.cuent_nom,
            tm_lgastos.lgst_nom,
            tm_tgastos.tgst_nom,
            tm_servicio.serv_nom,
            tm_con_gastos.cong_nom
            FROM 
            tm_registro
            INNER join tm_proyecto on tm_registro.pry_id = tm_proyecto.pry_id
            INNER join tm_proveedor on tm_registro.prov_id = tm_proveedor.prov_id
            INNER join tm_codigo on tm_registro.cod_id = tm_codigo.cod_id
            INNER join tm_beneficiario on tm_registro.beni_id = tm_beneficiario.beni_id
            INNER join tm_cobeneficiarios on tm_registro.cobe_id = tm_cobeneficiarios.cobe_id
            INNER join tm_cargo on tm_registro.carg_id = tm_cargo.carg_id
            INNER join tm_componente on tm_registro.comp_id = tm_componente.comp_id
            INNER join tm_actividad on tm_registro.acti_id = tm_actividad.acti_id
            INNER join tm_cuenta on tm_registro.cuent_id = tm_cuenta.cuent_id
            INNER join tm_lgastos on tm_registro.lgst_id = tm_lgastos.lgst_id
            INNER join tm_tgastos on tm_registro.tgst_id = tm_tgastos.tgst_id
            INNER join tm_servicio on tm_registro.serv_id = tm_servicio.serv_id
            INNER join tm_con_gastos on tm_registro.cong_id = tm_con_gastos.cong_id
            INNER join tm_usuario on tm_registro.us_id = tm_usuario.us_id
            WHERE
            tm_registro.est = 1
            AND tm_usuario.us_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $us_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }

    public function get_registro(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM  tm_registro where est='1'";
        $sql=$conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }
    

}

?>