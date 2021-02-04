
<?php

require_once 'connection.php'; // подключаем скрипт

$sql = mysqli_query($link, 'SELECT * FROM `category` ORDER BY `category_id` ASC');
// $sql = mysqli_query($link, 'SELECT `category_id`, `category_name` FROM `category`');
  while ($result = mysqli_fetch_array($sql) ) {
    
   ?>
        

                    <div class="title_services">
                        <div class="text_title_ser"><?php echo ("{$result['category_name']}")?></div>
                        
                    </div>

               <?php }


?>      

