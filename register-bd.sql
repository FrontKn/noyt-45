-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 20 2020 г., 22:26
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `register-bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Ремонт ЖК мониторов'),
(3, 'Ремонт ноутбуков'),
(2, 'Ремонт системных блоков\r\n(без стоимости запчастей)');

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `service_price` varchar(250) NOT NULL,
  `service_time` varchar(250) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`product_id`, `category_id`, `service_name`, `service_price`, `service_time`, `category_name`) VALUES
(1, 1, 'Диагностика (при условии последующего ремонта у нас)', 'Бесплатно', '30мин.', 'Ремонт ЖК мониторов'),
(2, 1, 'Диагностика без ремонта', '600руб.', '30мин.', 'Ремонт ЖК мониторов'),
(3, 1, 'Ремонт монитора', '1200руб', '2дня.', 'Ремонт ЖК мониторов'),
(4, 2, 'Диагностика (при условии последующего ремонта у нас)', 'Бесплатно', '30мин', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(5, 2, 'Диагностика без ремонта', '400руб', '30мин', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(6, 2, 'Чистка стационарного компьютера с полной разборкой, заменой термопасты и смазыванием вентиляторов', '600руб.', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(7, 2, 'Замена материнской платы', '	\r\n600руб', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(8, 2, 'Снятие / установка материнской платы в корпус компьютера', '600руб', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(9, 2, 'Замена видеокарты', '300руб', '2часа', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(10, 2, 'Замена блока питания', '200руб', '1час', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(11, 2, 'Замена жесткого диска', '300руб', '1час', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(12, 2, 'Замена сетевой платы LAN', '300руб', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(13, 2, 'Ремонт материнской платы', '500-1200руб', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(14, 2, 'Ремонт видеокарты', '	\r\n300–1000руб ', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(15, 2, 'Ремонт блока питания', '500руб', '1день', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(16, 2, 'Ремонт жесткого диска', '200–3000руб', '1-3дня', 'Ремонт системных блоков\r\n(без стоимости запчастей)'),
(17, 3, 'Диагностика, при условии дальнейшего ремонта у нас', 'Бесплатно', '30мин', 'Ремонт ноутбуков'),
(18, 3, 'Диагностика без ремонта', '400руб', '30мин', 'Ремонт ноутбуков'),
(19, 3, 'Ремонт внешнего блока питания', '600руб', '1день', 'Ремонт ноутбуков'),
(20, 3, 'Замена LCD-матрицы (экрана ноутбука)', 'от 2500руб', 'от 2дней', 'Ремонт ноутбуков'),
(21, 3, 'Восстановление подсветки дисплеев', 'от 1500 руб', '1день', 'Ремонт ноутбуков'),
(22, 3, 'Замена клавиатуры ноутбука', 'от 300руб', '1день', 'Ремонт ноутбуков'),
(23, 3, 'Ремонт материнской платы ноутбука', 'от 2000руб', 'от 2дней', 'Ремонт ноутбуков'),
(24, 3, 'Техническое обслуживание ноутбука) (чистка от пыли, замена термопасты)', 'от 700руб', '1день', 'Ремонт ноутбуков'),
(25, 3, 'Замена вентилятора системы охлаждения', 'от 1000руб', '1день', 'Ремонт ноутбуков'),
(26, 3, 'Замена разъема зарядки ноутбука', 'от 1400руб', '1день', 'Ремонт ноутбуков'),
(27, 3, 'Замена разъема USB', '1000руб', '1день', 'Ремонт ноутбуков'),
(28, 3, 'Замена DVD-дисковода', 'от 300руб', '1день', 'Ремонт ноутбуков'),
(29, 3, 'Замена жесткого диска', 'от 350 руб', '1день', 'Ремонт ноутбуков'),
(30, 3, 'Восстановление информации', 'от 2000руб', 'от 2дней', 'Ремонт ноутбуков'),
(31, 3, 'Модернизация ноутбука', 'от 500руб', '1день', 'Ремонт ноутбуков'),
(32, 3, 'Удаление вирусов', 'от 600руб', '1день', 'Ремонт ноутбуков'),
(33, 3, 'Установка драйверов', 'от 400руб', '1день', 'Ремонт ноутбуков'),
(34, 3, 'Настройка программ операционной системы Windows (обязательно при наличии лицензии)', 'от 400руб', '1день', 'Ремонт ноутбуков');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`) VALUES
(18, 'dfgfdgdgdfgdf', 'fdgdgd', 'gfdgfdg'),
(17, 'dfgfdgdgdfgdf', 'fdgdgd', 'gfdgfdg'),
(16, 'sdfdsfdsfdsf', 'dsfdsf', 'dsfdsfds'),
(15, 'sdfdsfdsfdsf', 'dsfdsf', 'dsfdsfds'),
(14, 'dsfdsfs', 'fdsfsfdsf', 'sfdsfsf'),
(13, 'dsfdsfs', 'fdsfsfdsf', 'sfdsfsf'),
(19, 'dfgfdg', 'c854391e20d0242be9f53cacefcaa3b3', 'dfgfdgfdg'),
(20, '123123', '82f37295135c5db9f0ead44b37b6a017', '123123'),
(21, 'login', '1421234942b5452e6f68b39e2b7e964a', 'name'),
(22, 'olga111', '51a7f078ec363d1c803f0ff1ff2f073e', 'olga');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `category_name_2` (`category_name`),
  ADD UNIQUE KEY `category_name_3` (`category_name`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_name` (`category_name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`category_name`) REFERENCES `category` (`category_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
