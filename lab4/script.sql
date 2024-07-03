--- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
--- Таблицы: Н_ОЦЕНКИ, Н_ВЕДОМОСТИ.
--- Вывести атрибуты: Н_ОЦЕНКИ.КОД, Н_ВЕДОМОСТИ.ДАТА.
--- Фильтры (AND):
--- a) Н_ОЦЕНКИ.КОД > 3.
--- b) Н_ВЕДОМОСТИ.ИД < 1490007.
--- Вид соединения: LEFT JOIN.

SELECT Н_ОЦЕНКИ.КОД, Н_ВЕДОМОСТИ.ДАТА FROM Н_ОЦЕНКИ
LEFT JOIN Н_ВЕДОМОСТИ ON Н_ОЦЕНКИ.КОД = Н_ВЕДОМОСТИ.ОЦЕНКА
WHERE Н_ОЦЕНКИ.КОД > '3' AND Н_ВЕДОМОСТИ.ИД < 1490007;

--- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
--- Таблицы: Н_ЛЮДИ, Н_ВЕДОМОСТИ, Н_СЕССИЯ.
--- Вывести атрибуты: Н_ЛЮДИ.ИД, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.ДАТА.
--- Фильтры (AND):
--- a) Н_ЛЮДИ.ОТЧЕСТВО > Александрович.
--- b) Н_ВЕДОМОСТИ.ДАТА = 2010-06-18.
--- c) Н_СЕССИЯ.ИД < 1975.
--- Вид соединения: LEFT JOIN.

SELECT Н_ЛЮДИ.ИД, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.ДАТА
FROM Н_ЛЮДИ
LEFT JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
LEFT JOIN Н_СЕССИЯ ON Н_ВЕДОМОСТИ.СЭС_ИД = Н_СЕССИЯ.СЭС_ИД
WHERE Н_ЛЮДИ.ОТЧЕСТВО > 'Александрович'
AND Н_ВЕДОМОСТИ.ДАТА = '2010-06-18'
AND Н_СЕССИЯ.ИД < 1975;