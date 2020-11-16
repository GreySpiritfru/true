-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 01 2020 г., 22:19
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `scdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `address`, `email`, `number`, `form`, `education`) VALUES
(1, 'ГСП', 'Щелковский район, д. Долгое Лёдово', ' gsp@schelcol.ru', '+7(926)703-43-31', 'очное, заочное', 'среднее - специальное'),
(2, 'СП N1', 'п. Фряново, ул. Победы, д. 7', ' osp1@schelcol.ru', '+7(496)563-50-32', 'очное', 'среднее - специальное'),
(3, 'СП N2', 'г. Фрязино, пр-д Окружной, д. 2А', ' osp2@schelcol.ru', '+7(926)055-01-73', 'очное', 'среднее - специальное'),
(4, 'СП N3', 'г. Щелково, ул. Малопролетарская, д. 28', ' osp3@schelcol.ru', '+7(916)738-05-58', 'очное, заочное', 'среднее - специальное'),
(5, 'СП N4', 'г. Щелково, 1-й Советский пер., д. 17', ' osp4@schelcol.ru', '+7(916)738-05-58', 'очное, заочное', 'среднее - специальное'),
(6, 'СП №6', 'г. Щелково, ул. Сиреневая, д. 3', 'osp6@schelcol.ru', '+7(967)030-59-94', 'очное, заочное', 'среднее - специальное'),
(7, 'СП №7  ', 'г. Лосино- Петровский, пл. Революции, д. 24', 'osp7@schelcol.ru', '+7(496)567-44-36', 'очное, заочное', 'среднее - специальное'),
(8, 'СП №8 ', 'г. Щелково, ул. Талсинская, д. 10', ' osp8@schelcol.ru', '+7(967)030-59-94', 'очное', 'среднее - специальное');

-- --------------------------------------------------------

--
-- Структура таблицы `open_days`
--

CREATE TABLE `open_days` (
  `id` int(11) NOT NULL,
  `id_college` int(11) NOT NULL,
  `day` date NOT NULL,
  `time` time NOT NULL,
  `addres` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `open_days`
--

INSERT INTO `open_days` (`id`, `id_college`, `day`, `time`, `addres`) VALUES
(1, 1, '2020-06-25', '10:30:00', ''),
(2, 2, '2020-04-26', '12:00:00', ''),
(3, 3, '2020-03-21', '12:00:00', ''),
(4, 4, '2020-02-28', '11:00:00', ''),
(5, 5, '2020-04-11', '11:00:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties`
--

CREATE TABLE `specialties` (
  `id` int(11) NOT NULL,
  `id_college` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `financing` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_of_education` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `specialties`
--

INSERT INTO `specialties` (`id`, `id_college`, `name`, `code`, `form`, `financing`, `level_of_education`, `qualification`) VALUES
(1, 1, 'Инфокоммуникационные сети и системы связи', '11.02.15', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Специалист по обслуживанию телекоммуникации'),
(2, 1, 'Информационные системы и программирование  ', '09.02.07', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Разработчик веб и мультимедийных приложений'),
(3, 1, 'Поварское и кондитерское дело  ', '43.02.15', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Специалист по поварскому и кондитерскому делу'),
(4, 2, 'Организация перевозок и управление на транспорте  ', '23.02.01', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Техник'),
(5, 2, 'Товароведение и экспертиза качества потребительских товаров', '38.02.05', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Товаровед-эксперт'),
(6, 3, 'Монтаж, техническое обслуживание и ремонт электронных приборов и устройств  ', '11.02.16', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Специалист по электронным приборам и устройствам'),
(7, 3, 'Право и организация социального обеспечения', '40.02.01', 'Очная форма обучения', 'Внебюджет', 'Базовый', 'Юрист'),
(8, 4, 'Земельно-имущественные отношения', '21.02.05', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Cпециалист по земельно-имущественным отношениям'),
(9, 4, 'Информационные системы и программирование  ', '09.02.07', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Разработчик веб и мультимедийных приложений'),
(10, 5, 'Технология аналитического контроля химических соединений  ', '18.02.12', 'Очная форма обучения', 'Бюджет', 'Базовый', 'Техник');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `open_days`
--
ALTER TABLE `open_days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_college` (`id_college`);

--
-- Индексы таблицы `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_college_2` (`id_college`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `open_days`
--
ALTER TABLE `open_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `open_days`
--
ALTER TABLE `open_days`
  ADD CONSTRAINT `open_days_ibfk_1` FOREIGN KEY (`id_college`) REFERENCES `colleges` (`id`);

--
-- Ограничения внешнего ключа таблицы `specialties`
--
ALTER TABLE `specialties`
  ADD CONSTRAINT `specialties_ibfk_1` FOREIGN KEY (`id_college`) REFERENCES `colleges` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
