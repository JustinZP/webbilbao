<%-- Marcelo Medina López --%>

<?php
$email=filter_input(INPUT_POST, 'email');
$password=filter_input(INPUT_POST, 'password');

$conexion=mysqli_connect("localhost","root","","dbBilbo");

$consulta="SELECT * FROM tbempleado where email='$email' and password='$password'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas)
{
    header("location:Empleado.php");
}
else
{
    ?>
    <?php
    include("Login.jsp");
    ?>
    <h1>Error. Vuelva a intentar.</h1>;
    <?php
}
mysqli_close($conexion);

<%-- Fin Marcelo Medina López --%>