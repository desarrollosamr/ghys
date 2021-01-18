<?php
// init.php
// archivo iniciarlizador del modulo
// librerias requeridas
// * Database
// * Session
date_default_timezone_set('America/Bogota');

include "core/modules/".Module::$module."/model/UserData.php";
include "core/modules/".Module::$module."/model/IngresosGastosData.php";
include "core/modules/".Module::$module."/model/CuentasData.php";
include "core/modules/".Module::$module."/model/CategoriaIyGData.php";
include "core/modules/".Module::$module."/model/cxcxpData.php";
include "core/modules/".Module::$module."/model/ConfigurationData.php";
include "core/modules/".Module::$module."/model/PersonData.php";
include "core/modules/".Module::$module."/model/cxcxpAbonosData.php";
include "core/modules/".Module::$module."/model/cxcxpTiposData.php";


session_start();
ob_start();

Module::loadLayout("index");

?>