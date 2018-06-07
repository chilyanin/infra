#!/bin/bash
# ������������� RVM ��� ������������ appuser:
gpg --keyserver hkp://sks.spodhuis.org --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
#���������� RVM ������ � ������������� ����������� ��� ������ RVM � Ruby:
source ~/.rvm/scripts/rvm
rvm requirements
#������������� Ruby (������ 2.4.1) ��� ������������ appuser
rvm install 2.4.1
#������� ������ ���� ��� ������������ �� ���������
rvm use 2.4.1 --default
#���������� bundler ��� ���������� ������������� ������ ����������
gem install bundler -V --no-ri --no-rdoc
#��������� ���������
ruby -v
bundle -v