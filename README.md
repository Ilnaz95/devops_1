Лабораторная работа № 1.

1. Написан bash-скрипт (weather.sh), который принимает в качестве входящего параметра город и выводит температуру и влажность в текущий день в этом городе.
2. Для вывода результата работы скрипта требуется установка nging (apt install nginx).
3. Скрипт запускается раз в минуту cron-задачей (файл minibaev).
4. Используется json-формат и библиотека jq:
   curl -s https://wttr.in/${CITY}?format=j1 | jq '.["current_condition"][0] | .temp_C, .humidity'
5. '1 lab result.PNG' - результат работы.
   
