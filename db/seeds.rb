# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(:email => 'porrasc25@gmail.com', 
              :password => 'carlos23', 
              :password_confirmation => 'carlos23',
              :name => 'Carlos Porras',
              :rol => 'admin')

User.create!(:email => 'mnarro50@hotmail.com', 
              :password => 'unodostres', 
              :password_confirmation => 'unodostres',
              :name => 'Ing. Manuel Narro',
              :rol => 'admin')

User.create!(:email => 'hebmartinez@hotmail.com', 
              :password => 'unodostres', 
              :password_confirmation => 'unodostres',
              :name => 'Dr. Herbert Martinez',
              :rol => 'admin')

User.create!(:email => 'hmartinez@gmail.com', 
              :password => 'unodostres', 
              :password_confirmation => 'unodostres',
              :name => 'Dr. Herbert Martinez',
              :rol => 'odontologo')

User.create!(:email => 'secretaria@gmail.com', 
              :password => 'unodostres', 
              :password_confirmation => 'unodostres',
              :name => 'Srta. Secretaria',
              :rol => 'secretaria')