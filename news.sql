-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 06 2018 г., 08:44
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_bd_zaytsev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `news` text NOT NULL,
  `data` date NOT NULL,
  `foto` varchar(20) NOT NULL,
  `skidki` int(10) NOT NULL,
  `aktsii` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `autor`, `subject`, `news`, `data`, `foto`, `skidki`, `aktsii`) VALUES
(1, 'Зайцев Сергей', 'Пришёл новый завоз', 'Пришла четвёртая партия бахил, в размере 50 штук', '2018-10-01', '/images/1.jpg', 10, 'Купи одну пару бахил и проходи на пары.'),
(2, 'Пащенко Дарья', 'Не пропустили на пары без бахил', 'Я не буду покупать ваши бахилы. Я поднимаю бунд. Лучше буду таскать переобувку.', '2018-10-02', 'images/2.jpg', 0, 'Не покупай бахилы, и не придёшь на пары.'),
(3, 'Гринёв Андрей', 'Купил бахилы, а они с дырками', 'У кого тоже такая проблема, отзовитесь ', '2018-10-03', 'images/3.jpg', 0, 'Купи бахилы, и они порвутся.'),
(4, 'Аноним', 'Пропустили без переобувки', 'Я нашёл секрет, как бороться с этим. Можно просто сказать \"Я с общежития\" и тебя пропустят.', '2018-10-04', 'images/4.jpg', 4, ''),
(5, 'Фёдоров Денис', 'Бахилы 2.0', 'Новая партия бахил, более устойчивые и надёжные.', '2018-10-05', 'images/5.jpg', 10, 'Новая партия будет надёжнее и дешевле. Всё для студентов. Всё в массы');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
