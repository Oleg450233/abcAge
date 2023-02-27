-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 27 2023 г., 20:09
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `abcage`
--

-- --------------------------------------------------------

--
-- Структура таблицы `repository`
--

CREATE TABLE `repository` (
  `id` int(10) UNSIGNED NOT NULL,
  `Товар` varchar(20) NOT NULL,
  `Остаток` int(11) NOT NULL,
  `Дата` date NOT NULL,
  `Цена` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Таблица остатков товаров на складе по дням';

--
-- Дамп данных таблицы `repository`
--

INSERT INTO `repository` (`id`, `Товар`, `Остаток`, `Дата`, `Цена`) VALUES
(1, 'Колбаса', 300, '2021-01-13', 21.671),
(2, 'Пармезан', 10, '2021-01-02', 780),
(3, 'Левый носок', 99, '2021-01-13', 6.5),
(4, 'Левый носок', 148, '2021-01-14', 7.8),
(5, 'Левый носок', 146, '2021-01-15', 7.8),
(6, 'Левый носок', 143, '2021-01-16', 7.8),
(7, 'Левый носок', 138, '2021-01-17', 7.8),
(8, 'Левый носок', 130, '2021-01-18', 7.8),
(9, 'Левый носок', 117, '2021-01-19', 7.8),
(10, 'Левый носок', 173, '2021-01-20', 9.1),
(11, 'Левый носок', 139, '2021-01-21', 9.1),
(12, 'Левый носок', 84, '2021-01-22', 9.1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `repository`
--
ALTER TABLE `repository`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `repository`
--
ALTER TABLE `repository`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
