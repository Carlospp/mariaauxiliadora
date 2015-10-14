class Position < ActiveRecord::Base
  has_many :employees
  validates :nombre , presence: { message: " es requerido"}  , confirmation: true
  validates :sueldo , presence: { message: " es requerido"}  , confirmation: true
  validates :sueldo, numericality: { only_integer: true ,message: "no es un numero"}
end
