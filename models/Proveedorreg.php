<?php
    class Proveedorreg extends Conectar{

        public function insert_proveedor($prov_nom){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_proveedor (prov_id,prov_nom,est) VALUES (NULL,?,'1');";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $prov_nom);
          
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function update_proveedor($prov_id,$prov_nom){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_proveedor set 
            prov_nom = ?
            where 
            prov_id=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $prov_nom);
            $sql->bindValue(2, $prov_id);
            $sql->execute();
        
        }


    public function delete_proveedor($prov_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="UPDATE tm_proveedor SET est='0' where prov_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $prov_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }

    public function get_proveedor_x_id($prov_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM  tm_proveedor where prov_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $prov_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }
    
    public function get_proveedor(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM  tm_proveedor where est='1'";
        $sql=$conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }
    

}

?>