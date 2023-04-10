<?php require("./inc/session_start.php"); //require lo llama solo una vez ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <?php include("./inc/head.php"); ?>
</head>
<body>
  <?php 
        if(!isset($_GET["vista"]) || $_GET["vista"]==""){
            $_GET["vista"]="login";
        }
        if(is_file("./vistas/".$_GET["vista"].".php") &&
        $_GET["vista"] !="login" && $_GET["vista"]!="404"){
          //cerrar sesion//
          if((!isset($_SESSION['id'])) || ($_SESSION['id']=="") || 
             (!isset($_SESSION['usuario']))|| ($_SESSION['usuario']=="")){
              
              include("./vistas/logout.php");
          }
          include("./inc/navbar.php");
          include("./vistas/".$_GET["vista"].".php");
          include("./inc/script.php");
        }else{
          if($_GET["vista"]=="login"){
            include "./vistas/login.php";
          }else{
            include "./vistas/404.php";
          }
        }
         ?>
  <!--<img src="./img/thanos-dancing-twerking.gif" class="thanos" alt"" width="19%">  
  <img src="./img/chumchum-scream.gif" class="chumchum" alt"" width="30%">
  <img src="./img/thanos-dancing-twerking.gif" width="19%">  -->
</body>
</html>