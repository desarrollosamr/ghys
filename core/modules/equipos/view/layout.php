<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistema de Informacion Para Punto de Venta</title>

    <!-- Bootstrap core CSS -->
    <link href="res/bootstrap3/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="res/daterangepicker/daterangepicker.js"></script>
    <link href="res/daterangepicker/daterangepicker.css" rel="stylesheet"/>
<style>
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    border: 1px solid #dadada;
    margin-bottom:  10px;
    padding: 10px;  
}  

.header {
    text-align: center;
    margin-top: 10px;
}
</style>
<script>
$(function () {
    $('#date_range').daterangepicker({
        "locale": {
            "format": "YYYY-MM-DD",
            "separator": " - ",
            "applyLabel": "Guardar",
            "cancelLabel": "Cancelar",
            "fromLabel": "Desde",
            "toLabel": "Hasta",
            "customRangeLabel": "Personalizar",
            "daysOfWeek": [
                "Do",
                "Lu",
                "Ma",
                "Mi",
                "Ju",
                "Vi",
                "Sa"
            ],
            "monthNames": [
                "Enero",
                "Febrero",
                "Marzo",
                "Abril",
                "Mayo",
                "Junio",
                "Julio",
                "Agosto",
                "Setiembre",
                "Octubre",
                "Noviembre",
                "Diciembre"
            ],
            "firstDay": 1
        },
        "opens": "center"
    });
});
</script>
  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./">SIPUVE <sup><small><span class="label label-danger">v1.0</span></small></sup> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
<?php 
$u=null;
if(Session::getUID()!=""):
  $u = UserData::getById(Session::getUID());
?>
          <ul class="nav navbar-nav side-nav">
          <li><a href="index.php?view=home"><i class="fa fa-home"></i> Inicio</a></li>
          <li><a href="index.php?view=sell"><i class="fa fa-usd"></i> Vender</a></li>
		  <li><a href="#" id="btn-3" data-toggle="collapse" data-target="#submenu3" aria-expanded="false"><i class="fa fa-shopping-cart"></i> Ventas</a>
			<ul class="nav collapse" id="submenu3" role="menu" aria-labelledby="btn-3">
			   	<li><a href="index.php?view=sells"><i class="fa fa-shopping-cart"></i> Por Transaccion</a></li>
			   	<li><a href="index.php?view=sells"><i class="fa fa-female"></i> Por Articulo</a></li>
			</ul>	
          </li>
          <li><a href="index.php?view=reservas"><i class="fa fa-shopping-cart"></i> Reservas</a></li>
          <li><a href="index.php?view=cambio"><i class="fa fa-exchange"></i> Cambiar</a></li>
          <li><a href="index.php?view=cambios"><i class="fa fa-exchange"></i> Cambios</a></li>
          <li><a href="index.php?view=box"><i class="fa fa-archive"></i> Caja </a></li>
          
		  <li><a href="#" id="btn-1" data-toggle="collapse" data-target="#submenu1" aria-expanded="false"><i class="fa fa-database"></i> Maestros</a>
		      <ul class="nav collapse" id="submenu1" role="menu" aria-labelledby="btn-1">
		          <li><a href="index.php?view=clients"><i class="fa fa-smile-o"></i> Clientes </a></li>
		          <?php if($u->is_admin):?>
			          <li><a href="index.php?view=products"><i class="fa fa-glass"></i> Productos</a></li>
			          <li><a href="index.php?view=categories"><i class="fa fa-th-list"></i> Categorias </a></li>
			          <li><a href="index.php?view=tallas"><i class="fa fa-th-list"></i> Tallas </a></li>
					  <li><a href="index.php?view=colores"><i class="fa fa-th-list"></i> Colores </a></li>
			          <li><a href="index.php?view=providers"><i class="fa fa-truck"></i> Proveedores </a></li>
		          <?php endif;?>        
		      </ul>
    	  </li>          
          <?php if($u->is_admin):?>
          <li><a href="index.php?view=etiquetas"><i class="fa fa-th-list"></i> Etiquetas</a></li>
          <li><a href="index.php?view=inventary"><i class="fa fa-area-chart"></i> Inventario</a></li>
          <li><a href="index.php?view=inventary_val"><i class="fa fa-area-chart"></i> Inventario valorizado</a></li>
          <li><a href="index.php?view=re"><i class="fa fa-refresh"></i> Reabastecer</a></li>
          <li><a href="index.php?view=res"><i class="fa fa-th-list"></i> Reabastecimientos </a></li>
          <li><a href="#" id="btn-2" data-toggle="collapse" data-target="#submenu2" aria-expanded="false"><i class="fa fa-tasks"></i> Reportes</a>
		      <ul class="nav collapse" id="submenu2" role="menu" aria-labelledby="btn-2">
		      	<li><a href="index.php?view=reports"><i class="fa fa-female"></i> Ventas por productos</a></li>
		      	<li><a href="index.php?view=sellsbyclient"><i class="fa fa-user"></i> Ventas por cliente</a></li>
		      	<li><a href="index.php?view=sellsbyseller"><i class="fa fa-user"></i> Ventas por vendedor</a></li>
		      </ul>          
          </li>
          <li><a href="index.php?view=ajustes"><i class="fa fa-th-list"></i> Ajustes </a></li>
          <?php endif;?>
          <li><a href="index.php?view=backup"><i class="fa fa-tasks"></i> Backup</a></li>
          <?php if($u->is_admin):?>
          <li><a href="index.php?view=importar"><i class="fa fa-tasks"></i> Importar</a></li>
          <li><a href="index.php?view=users"><i class="fa fa-users"></i> Usuarios </a></li>
        <?php endif;?>
          </ul>
<?php endif;?>



<?php if(Session::getUID()!=""):?>
<?php 
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
  $user = $u->name." ".$u->lastname;

  }?>
          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown user-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <?php echo $user; ?> <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="index.php?view=configuration">Configuracion</a></li>
          <li><a href="logout.php">Salir</a></li>
        </ul>
<?php else:?>
<?php endif; ?>




        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

<?php 
  // puedo cargar otras funciones iniciales
  // dentro de la funcion donde cargo la vista actual
  // como por ejemplo cargar el corte actual
  View::load("login");
?>


      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->

<script src="res/bootstrap3/js/bootstrap.min.js"></script>
<script src="res/datepicker/js/bootstrap-datepicker.js"></script>
<script>
            $('.tip').tooltip();

            $('#alert').hide();
      Date.prototype.toString = function() { return this.getFullYear()+"/"(this.getMonth()+1)+"/"+this.getDate(); }
  	  var startDate = new Date();
      var endDate = new Date();
      $('#dp4').attr('data-date',startDate);
      $('#dp5').attr('data-date',endDate);

      $('#startDate').text($('#dp4').data('date'));
      $('#endDate').text($('#dp5').data('date'));
      $('#dp4').datepicker()
        .on('changeDate', function(ev){
          if (ev.date.valueOf() > endDate.valueOf()){
            $('#alert').show().find('strong').text('La fecha de inicio no debe ser mayor que la fecha de fin.');
          } else {
            $('#alert').hide();
            startDate = new Date(ev.date);
            $('#startDate').text($('#dp4').data('date'));
            $('#stdate').val($('#dp4').data('date'));
          }
          $('#dp4').datepicker('hide');
        });

      $('#dp5').datepicker()
        .on('changeDate', function(ev){
          if (ev.date.valueOf() < startDate.valueOf()){
            $('#alert').show().find('strong').text('La fecha de fin no debe ser menor que la fecha de inicio.');
          } else {
            $('#alert').hide();
            endDate = new Date(ev.date);
            $('#endDate').text($('#dp5').data('date'));
            $('#endate').val( $('#dp5').data('date') );
          }
          $('#dp5').datepicker('hide');
        });


</script>

  </body>
</html>
