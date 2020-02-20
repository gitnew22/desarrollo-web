<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Sin título 1</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>

<body>
<?php

	// Datos de la base de datos
	$usuario = "root";
	$password = "";
	$servidor = "localhost";
	$basededatos = "empresa";
	
	// creaci�n de la conexi�n a la base de datos con mysql_connect()
	$conexion = mysqli_connect( $servidor, $usuario, "" ) or die ("No se ha podido conectar al servidor de Base de datos");
	
	// Selecci�n del a base de datos a utilizar
	$db = mysqli_select_db( $conexion, $basededatos ) or die ( "Upps! Pues va a ser que no se ha podido conectar a la base de datos" );

	$acentos = "SET NAMES 'utf8'";
	$resultado = mysqli_query( $conexion, $acentos) or die ("algo ha ido mal");
	
	// establecer y realizar consulta. guardamos en variable.
	$consulta = "SELECT * FROM emple";
	$resultado = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");
	$consulta = "SELECT * FROM depart";
	$resultado2 = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");
	
	// Motrar el resultado de los registro de la base de datos
	// Encabezado de la tabla
	echo "<table class='table table-dark' border='7'";
	echo "<tr>";
	echo "<th>emp_no</th>";
	echo "<th>apellido</th>";
	echo "<th>oficio</th>";
	echo "<th>dir</th>";
	echo "<th>fecha_alt</th>";
	echo "<th>salario</th>";
	echo "<th>comision</th>";
	echo "<th>dept_no</th>";
	echo "</tr>";
	
	// Bucle while que recorre cada registro y muestra cada campo en la tabla.
	while ($columna = mysqli_fetch_array( $resultado ))
	{
		echo "<tr>";
		echo "<td>" . $columna['emp_no'] . "</td><td>" . $columna['apellido'] . "</td><td>" . $columna['oficio'] . "</td><td>" . $columna['dir']  
		. $columna['fecha_alt'] . "</td><td>" . $columna['salario'] . "</td><td>" . $columna['comision'] . "</td><td>" . $columna['dept_no'] . "</td>";
		echo "</tr>";
	}
	
	echo "</table>"; // Fin de la tabla
	
	echo "<table class='table table-striped' border='7'";
	echo "<tr>";
	echo "<td>dept_no</td>";
	echo "<td>dnombre</td>";
	echo "<td>loc</td>";
	echo "</tr>";
	
	while ($columna = mysqli_fetch_array( $resultado2 ))
	{
	echo "<tr>";
	echo "<td>" . $columna['dept_no'] . "</td><td>" . $columna['dnombre'] . "</td><td>" .$columna['loc'] . "</td>" ;
	echo "</tr>";
	}
	echo "</table>"; // Fin de la tabla
	
	// cerrar conexi�n de base de datos
	mysqli_close( $conexion );
?>
</body>

</html>
