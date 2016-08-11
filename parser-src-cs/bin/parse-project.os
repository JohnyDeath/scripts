#Использовать ".."

Процедура ОбработатьФайлПроекта(ФайлИсходников)

	// Парсер = Новый ПарсерИсходниковСиШарп();
	// Парсер.УстановитьФайлМодуля(ФайлИсходников);
	// Результат = Парсер.ПолучитьМетодыСОписанием();

    // Если Результат[0].Свойство("Тег") = Неопределено Тогда
    //     Сообщить("Пропущен файл: " + ФайлИсходников);
    //     Возврат;
    // КонецЕсли;

	ГенераторМаркдаун = Новый ГенераторMarkdownИсходниковСиШарп();

Файл = Новый Файл(ФайлИсходников);


    ГенераторМаркдаун.СоздатьДокумент(ФайлИсходников, "fixtures/oscript/" + Файл.Имя + ".md", Ложь);

КонецПроцедуры

Процедура ПеребратьФайлыПроекта(ПутьКПроекту)

	Файлы = НайтиФайлы(ПутьКПроекту, "*.cs", Истина);

    Для каждого Элемент Из Файлы Цикл
        // Сообщить(Элемент.ПолноеИмя);
        ОбработатьФайлПроекта(Элемент.ПолноеИмя);
    КонецЦикла;

КонецПроцедуры

// ПеребратьФайлыПроекта("c:\work\GitHub\oscript-simple-gui\oscript-component\");
ПеребратьФайлыПроекта("c:\work\tmp\oscript-src\src\ScriptEngine.HostedScript\Library\");