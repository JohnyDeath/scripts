#Использовать v8runner

Процедура ОбеспечитьКаталог(Знач Каталог)

	Файл = Новый Файл(Каталог);
	Если Не Файл.Существует() Тогда
		СоздатьКаталог(Каталог);
	ИначеЕсли Не Файл.ЭтоКаталог() Тогда
		ВызватьИсключение "Каталог " + Каталог + " не является каталогом";
	КонецЕсли;

КонецПроцедуры

Процедура СделатьТиИ(Параметры)

	СтрокаСоединения =  "/Fc:\work\db\fin\";
	УправлениеКонфигуратором = Новый УправлениеКонфигуратором();
	УправлениеКонфигуратором.УстановитьКонтекст(СтрокаСоединения, "", "");
	УправлениеКонфигуратором.УстановитьИмяФайлаСообщенийПлатформы("repari-out.txt");

	ОпцииТиИ = УправлениеКонфигуратором.ПолучитьОпцииТиИ();
	ОпцииТиИ.Вставить("ЛогическаяИСсылочнаяЦелостность", Ложь);

	УправлениеКонфигуратором.ЗапуститьТестированиеИИсправление(ОпцииТиИ);


КонецПроцедуры

// Параметры = Новый Структура;
// Параметры.Вставить("Архиватор","c:\work\portable\7-Zip\7z.exe");
// Параметры.Вставить("ПутьКБазе","c:\work\db\v8_tasks\");
// Параметры.Вставить("КаталогКопий","c:\work\db\");
// Параметры.Вставить("ИмяФайлаВыгрузки","tasks");
// Параметры.Вставить("Суфикс","test");

// СоздатьАрхив(Параметры);

СделатьТиИ(0);