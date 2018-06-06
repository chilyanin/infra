#!/bin/bash
#Копируем код приложения. Можно использовать HTTPS:
git clone https://github.com/Artemmkin/reddit.git
#Переходим в директорию проекта и устанавливаем зависимости приложения
cd reddit && bundle install
#Запускаем сервер приложения в папке проект:
puma -d
#Проверьте что сервер запустился и на каком порту он слушает
ps aux | grep puma