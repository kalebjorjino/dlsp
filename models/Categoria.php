<?php
    class Categoriareg extends Conectar{

        public function insert_categoria($cat_nom,$cat_descrip){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_categoria (cat_id,cat_nom,cat_descrip,est) VALUES (NULL,?,?,'1');";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $cat_nom);
            $sql->bindValue(2, $cat_descrip);
          
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function update_categoria($cat_id,$cat_nom,$cat_descrip){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_categoria set 
            cat_nom = ?,
            cat_descrip = ?
            where 
            cat_id=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $cat_nom);
            $sql->bindValue(2, $cat_descrip);
            $sql->bindValue(3, $cat_id);
            $sql->execute();
        
        }


    public function delete_categoria($cat_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="UPDATE tm_categoria SET est='0' where cat_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $cat_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }

    public function get_categoria_x_id($cat_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM  tm_categoria where cat_id=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $cat_id);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }
    
    public function get_categoria(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM  tm_categoria where est='1'";
        $sql=$conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll();
    }
    

}

?>