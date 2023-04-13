<div class="container is-fluid mb-6">
    <h1 class="title">Usuarios</h1>
    <p class="nuevo_lista">Lista de Usuarios</p></div>
</div>

<div class="container pb-6 pt-6">  
    <?php
        require_once "./php/main.php";
        //Eliminar usuario//
        if(isset($_GET['user_id_del'])){
            require_once "./php/usuario_eliminar.php";
        }

        if(!isset($_GET['page'])){
            $pagina=1;
        }else{
            $pagina=(int) $_GET['page'];
            if($pagina<=1){
                $pagina=1;
            }
        }

        $pagina=limpiar_cadena($pagina);
        $url="index.php?vista=user_list&page=";
        $registros=10;  //cuantos registros por pagina quieres que se muestren
        $busqueda="";

        //Paginador usuario//
        require_once "./php/usuario_lista.php";
    ?>
</div>