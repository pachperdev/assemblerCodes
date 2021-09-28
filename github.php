<?php
$out = shell_exec("cd /var/www/html/assemblerCodes  && git reset –hard HEAD && git pull");
var_dump($out);

