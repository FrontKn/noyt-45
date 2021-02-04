<?php
$login = filter_var(trim($_POST['login']) ,
FILTER_SANITIZE_STRING);

$name = filter_var(trim($_POST['name']) ,
FILTER_SANITIZE_STRING); 

$pass = filter_var(trim($_POST['password']) ,
FILTER_SANITIZE_STRING); 
 
if(mb_strlen($login) < 5 || mb_strlen($login)>90){
    echo "Логин не корректный";
    exit();
} else if(mb_strlen($name) < 3 || mb_strlen($name)>50){
    echo "Имя не корректное";
    exit();
}else if(mb_strlen($pass) < 3 || mb_strlen($pass)>12){
    echo "Пароль не корректный (от 3 до 12 символов)";
    exit();
}

$pass = md5($pass."jksaeq");

$mysql = new mysqli('localhost','root','','register-bd');
$mysql->query("INSERT INTO `users` (`login`,`pass`,`name`) 
VALUES('$login','$pass','$name')");

$mysql->close();
header('Location: http://noyt-site/');