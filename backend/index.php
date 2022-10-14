<?php
//se crea clase conexion

class Conexion {
    
   static public function conectar(){
    $host="localhost";
    $db_nombre="alquiler";
    $usuario="root";
    $password="";
    $puerto="";
    $charset="utf8";
        try {
            $dsn = "mysql:host=".$host.";"."dbname=".$db_nombre.";"."port=".$puerto.";"."charset=".$charset;
            $baseDatos = new PDO($dsn,$usuario,$password);
            $baseDatos->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            return $baseDatos;
        } catch (PDOException $errores) {
            echo "No me pude conectar a la BD ". $errores->getmessage();
            exit;
        }
    }
}
//la clase laptops 
class Laptops{
    public function listarByCodigo($codigo){
        // se hace la conexion
        $pdo= Conexion::conectar();
        $sql = "select * from unidad where codigo = :codigo  ";
        // Aquí ejecuto el prepare de los datos
        $query = $pdo->prepare($sql);
        $query->bindValue(':codigo', $codigo, PDO::PARAM_STR);
        // se hubiera parametros se bindean para evitar ataques sql
        $query->execute();
        $libro = $query->fetchAll(PDO::FETCH_ASSOC);
        return $libro;
    }
    public function listarByEmpresa($empresa){
        // se hace la conexion
        $pdo= Conexion::conectar();
        $sql = "select u.codigo,u.tipo,u.marca,u.procesador,u.generacion from unidad_cliente uc
        left join unidad u on uc.unidad_id = u.id
        left join cliente c on uc.cliente_idc = c.idc where c.empresa = :empresa ";
        // Aquí ejecuto el prepare de los datos
        $query = $pdo->prepare($sql);
        $query->bindValue(':empresa', $empresa, PDO::PARAM_STR);
        // se hubiera parametros se bindean para evitar ataques sql
        $query->execute();
        $libro = $query->fetchAll(PDO::FETCH_ASSOC);
        return $libro;
    }
}
// en la vista se imprime los datos
if(isset($_GET['code'])){
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");  
    header('HTTP/2.0 200');
    $codigo = $_GET['code'];
    $laptops = new Laptops();
   $lista = $laptops->listarByEmpresa($codigo);
     $respuesta = array();
     $respuesta['data']= $lista;
    echo json_encode($respuesta); 
}


