<?php
    //conexion a la base de datos//
    function conexion(){
        //$pdo= new PDO('mysql:host=localhost;dbname=id20586654_inventario','id20586654_inventarios','shayeraslayerD.1312219113122191');
		$pdo= new PDO('mysql:host=localhost;dbname=inventario','root',''); //nueva instancia que sirve para PDO, estamos creando una conexion a la base de datos
        return $pdo;
    }

    //verificar los datos//
    function verificar_datos($filtro,$cadena){
        if(preg_match("/^".$filtro."$/",$cadena)){
            return false;
        }else{
            return true;
        }
    }

    //Limpiar Cadenas de texto//
        function limpiar_cadena($cadena){
		$cadena=trim($cadena);
		$cadena=stripslashes($cadena);
		$cadena=str_ireplace("<script>", "", $cadena); //es para que no entre una inyeccion
		$cadena=str_ireplace("</script>", "", $cadena); //osea reemplaza en este caso "</script>" por un "" vacio
		$cadena=str_ireplace("<script src", "", $cadena);
		$cadena=str_ireplace("<script type=", "", $cadena);
		$cadena=str_ireplace("SELECT * FROM", "", $cadena);
		$cadena=str_ireplace("DELETE FROM", "", $cadena);
		$cadena=str_ireplace("INSERT INTO", "", $cadena);
		$cadena=str_ireplace("DROP TABLE", "", $cadena);
		$cadena=str_ireplace("DROP DATABASE", "", $cadena);
		$cadena=str_ireplace("TRUNCATE TABLE", "", $cadena);
		$cadena=str_ireplace("SHOW TABLES;", "", $cadena);
		$cadena=str_ireplace("SHOW DATABASES;", "", $cadena);
		$cadena=str_ireplace("<?php", "", $cadena);
		$cadena=str_ireplace("?>", "", $cadena);
		$cadena=str_ireplace("--", "", $cadena);
		$cadena=str_ireplace("^", "", $cadena);
		$cadena=str_ireplace("<", "", $cadena);
		$cadena=str_ireplace("[", "", $cadena);
		$cadena=str_ireplace("]", "", $cadena);
		$cadena=str_ireplace("==", "", $cadena);
		$cadena=str_ireplace(";", "", $cadena);
		$cadena=str_ireplace("::", "", $cadena);
		$cadena=trim($cadena);
		$cadena=stripslashes($cadena);
		return $cadena;
	}

    //funcion para renombrar fotos//
    function renombrar_fotos($nombre){
		$nombre=str_ireplace(" ", "_", $nombre);  
		$nombre=str_ireplace("/", "_", $nombre);    //aqui reemplaza "/" por un "_"
		$nombre=str_ireplace("#", "_", $nombre);
		$nombre=str_ireplace("-", "_", $nombre);
		$nombre=str_ireplace("$", "_", $nombre);
		$nombre=str_ireplace(".", "_", $nombre);
		$nombre=str_ireplace(",", "_", $nombre);
		$nombre=$nombre."_".rand(0,100);    //dara un numero aleatorio del 0 al 100
		return $nombre;
	}

    //funcion para paginar las tablas//
	function paginador_tablas($pagina,$Npaginas,$url,$botones){
		$tabla='<nav class="pagination is-centered is-rounded" role="navigation" aria-label="pagination">';

		if($pagina<=1){ //el .= es para concatenar texto
			$tabla.=' 
			<a class="pagination-previous is-disabled" disabled >Anterior</a>
			<ul class="pagination-list">
            ';
		}else{
			$tabla.='
			<a class="pagination-previous" href="'.$url.($pagina-1).'" >Anterior</a>
			<ul class="pagination-list">
				<li><a class="pagination-link" href="'.$url.'1">1</a></li>
				<li><span class="pagination-ellipsis">&hellip;</span></li>
			';
		}

		$ci=0;
		for($i=$pagina; $i<=$Npaginas; $i++){//para colocar el boton actual con color y limite de botones en la paginacion
			if($ci>=$botones){
				break;
			}
			if($pagina==$i){
				$tabla.='<li><a class="pagination-link is-current" href="'.$url.$i.'">'.$i.'</a></li>';
			}else{
				$tabla.='<li><a class="pagination-link" href="'.$url.$i.'">'.$i.'</a></li>';
			}
			$ci++;
		}

		if($pagina==$Npaginas){ //esto quiere decir q esta en la ultima pagina
			$tabla.='
			</ul>
			<a class="pagination-next is-disabled" disabled >Siguiente</a>
			';
		}else{
			$tabla.='
				<li><span class="pagination-ellipsis">&hellip;</span></li>
				<li><a class="pagination-link" href="'.$url.$Npaginas.'">'.$Npaginas.'</a></li>
			</ul>
			<a class="pagination-next" href="'.$url.($pagina+1).'" >Siguiente</a>
			';
		}

		$tabla.='</nav>';
		return $tabla;
	}
    
    
    
    /*$nombre= "Denniii";
    if(verificar_datos("[a-zA-Z]{6,10}",$nombre)){
        echo "Los datos no coinciden";
    }*/
        /*$pdo -> query("INSERT INTO categoria (categoria_nombre,categoria_ubicacion)
    VALUES('prueba','texto ubicacion')");//para crear una peticion (revisar)*/
