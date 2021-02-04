
<?php
 
 require_once 'index.php'; // подключаем скрипт
 require_once 'connection.php'; // подключаем скрипт
  
 
 $sql = mysqli_query($link, 'SELECT `product_id`, `category_id`, `service_name` , `category_name`, `service_price` ,`service_time` FROM `service`');  
   while ($result = mysqli_fetch_array($sql) ) { 
   
      ?>
  <div class="list_element_ser disNoPo cat-<?= $result['category_id']?> myID-<?= $result['product_id']?> " id="<?= $result['category_id']?>" >
                    <div class="everyPop everyPop_two mysID-<?= $result['product_id']?> closeID-<?= $result['product_id']?> disNoPo">
                         <form>
                             <div class="everyPop_block_close_popUp everyPop_block_close_popUp_two cat-<?= $result['category_id']?> mysID-<?= $result['product_id']?>">X</div>
                             <div class="up_login_input">
                                 <div type="text" class="login_text_input classic_form_input password_text_input" contenteditable="true">Имя и Фамилия</div>
 
                                 <div type="text" class="password_text_input classic_form_input" contenteditable="true">Телефон</div>
                                 <div type="text" class="password_text_input classic_form_input" contenteditable="true">
                                 Комментарий: <?= $result['service_name']?>,<br>
                                 <?= $result['category_name']?>
                                 </div>
                             </div>
                             <div class="down_login_input">
                                 <button class="in_form_log">Заказать звонок</button>
                             </div>
                         </form>
                       </div>
                             <div class="content_lest_elem">
                                 <div class="left_lest_elem">
                 
                                 <div class="up_list_title_elem">
     <?php
     echo  ("{$result['service_name']}");
    ?>
         </div>
         
                                     <div class="down_list_title_elem">
     <?php
     echo (" ~  {$result['service_time']} ");
    ?>
      </div>
                                 </div>
                                 <div class="right_lest_elem">
                                     <div class="btn_price_elem myID-<?= $result['product_id']?>">
                                      <?php
    
    echo ("   {$result['service_price']} ");
    ?>
            </div>
                                 </div>
                             </div>
                             <div class="elem_list_down_line">
                             </div>
                         </div>
                         <?php
   }
   
 
 
 ?>      
 