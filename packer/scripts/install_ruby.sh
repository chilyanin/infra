#!/bin/bash
# Устанавливаем RVM для пользователя appuser:
gpg --keyserver hkp://sks.spodhuis.org --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
#Подгружаем RVM скрипт и устанавливаем зависимости для работы RVM и Ruby:
source ~/.rvm/scripts/rvm
rvm requirements
#Устанавливаем Ruby (версии 2.4.1) для пользователя appuser
rvm install 2.4.1
#Укажите версию руби для пользователя по умолчанию
rvm use 2.4.1 --default
#Установите bundler для управления зависимостями нашего приложения
gem install bundler -V --no-ri --no-rdoc
#Проверьте установку
ruby -v
bundle -v