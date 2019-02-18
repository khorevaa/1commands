# language: ru

Функциональность: Выполнение команды

Как разработчик
Я хочу иметь возможность выполнять команды
Чтобы я мог проще автоматизировать больше действий на OneScript

Контекст: Отключение отладки в логах
    Допустим Я выключаю отладку лога с именем "oscript.lib.commands"
    И Я очищаю параметры команды "git" в контексте
    И Я очищаю параметры команды "oscript" в контексте

Сценарий: Выполнение команды с массивом параметров
    Когда Я добавляю параметры для команды "oscript"
    | -version |
    | -encoding=utf-8 |
    И Я добавляю параметр "features/step_definitions/fixtures/ДолгоеВыполнение.os" для команды "git"
    И Я выполняю команду "oscript"
    Тогда я вижу в консоли строку подобно "Полезная работа"
