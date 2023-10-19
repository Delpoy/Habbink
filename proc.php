<?php

include 'kernel/config.php';

$q=$_POST[q];

$sql="SELECT * FROM furnis WHERE nombre LIKE '".$q."%'";
$res = $link->query($sql);

if( mysqli_num_rows($res) == 0){

echo '<b>No hay Resultados</b>';

}else{

echo '<b>Resultados:</b><br />';

while($fila = mysqli_fetch_array($res)){?>

<div class="itemBox" style="background: url(<?php echo "$fila[imagen]"; ?>) #353333 50% no-repeat;"><div class="itemName"><?php echo "$fila[nombre]"; ?></div><div class="itemPrice">
<div class="icon"><img src="<?php echo "$fila[icon]"; ?>"></div><span class="iconR"><?php echo "$fila[creditos]"; ?></span></div></div>
<?php
}

}

?>
