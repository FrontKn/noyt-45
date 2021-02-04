<?php
setcookie('user', $user['name'] , time() - 3600*3 ,"/");
header('Location: http://noyt-site/');
?>