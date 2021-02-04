<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/reg.css">
    <title>Document</title>
</head>

<body>
    <?php 
    if($_COOKIE['user'] == ''):
    ?>
    <div class="form_reg">

        <form action="./validation-form/check.php" method="post">
            <h3 style="display: flex;justify-content: center;">Регистрация</h3>
            <input type="text" name="login" id="login" placeholder="Введите логин">
            <input type="text" name="name" id="name" placeholder="Введите имя">
            <input type="text" name="password" id="password" placeholder="Введите пароль">
            <button>Зарегистрировать</button>
        </form>
        <div class="form_enter">

            <form action="./validation-form/auth.php" method="post">
                <h3 style="display: flex;justify-content: center;">Авторизация</h3>
                <input type="text" name="login" id="login" placeholder="Введите логин">
                <input type="text" name="password" id="password" placeholder="Введите пароль">
                <button>Войти</button>
            </form>
        </div>
    </div>
    <?php
    else:
    ?>
    <p>Привет <?= $_COOKIE['user']?>
    <br>
    <hr>Перейти - <a href="http://noyt-site/"> на главную.</a>
    <br><hr>Чтобы выйти из аккаунта нажмите - <a href="./exit.php">ВЫЙТИ ИЗ АККАУНТ!</a>  </p>
        <?php
        endif;
        ?>
</body>

</html>