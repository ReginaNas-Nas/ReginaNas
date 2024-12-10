﻿#language: ru

@tree

Функционал: Порверка работы пользователя Продавец с документами

Как Продавец я хочу
корректность работы пользователя с документами Продажа и Заказ 

Контекст:
	Дано Я подключаю клиент тестирования "Продавец" из таблицы клиентов тестирования

Сценарий: Проверка документа Продажа

	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	
Сценарий: Проверка документа Заказ

	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И элемент формы с именем "ФормаСоздать" отсутствует на форме
	И элемент формы с именем "ФормаПровестиИЗакрыть" отсутствует на форме
	Когда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Автор'         | 'Валюта взаиморасчетов' | 'Вид цен'    | 'Дата'                | 'Номер'     | 'Организация'        | 'Покупатель'                | 'Склад'                 | 'Состояние заказа' |
		| 'Администратор' | 'Рубли'                 | 'Закупочная' | '22.08.2024 12:13:45' | '000000026' | 'ООО "Все для дома"' | 'Магазин "Бытовая техника"' | 'Склад отдела продаж'   | 'Открыт'           |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
	И я закрываю все окна клиентского приложения		
