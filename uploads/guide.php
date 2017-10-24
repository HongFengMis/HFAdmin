<?php

$json = file_get_contents('base.json');

$callback=$_GET['jsoncallback'];
echo $callback."($json)";

?>