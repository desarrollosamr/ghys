<?php
// init.php
// archivo iniciarlizador del modulo
// librerias requeridas
// * Database
// * Session
date_default_timezone_set('America/Bogota');

include "core/modules/".Module::$module."/model/UserData.php";
include "core/modules/".Module::$module."/model/ProductData.php";
include "core/modules/".Module::$module."/model/OperationTypeData.php";
include "core/modules/".Module::$module."/model/OperationData.php";
include "core/modules/".Module::$module."/model/SellData.php";
include "core/modules/".Module::$module."/model/ConfigurationData.php";
include "core/modules/".Module::$module."/model/PersonData.php";
include "core/modules/".Module::$module."/model/CategoryData.php";
include "core/modules/".Module::$module."/model/TallaData.php";
include "core/modules/".Module::$module."/model/ColorData.php";
include "core/modules/".Module::$module."/model/BoxData.php";
include "core/modules/".Module::$module."/model/CambiosData.php";
include "core/modules/".Module::$module."/model/AjustesData.php";
include "core/modules/".Module::$module."/model/AjustesTypeData.php";
include "core/modules/".Module::$module."/model/AbonosData.php";


session_start();
ob_start();

Module::loadLayout("index");

?>