class Treatment < ActiveRecord::Base
  validates :nombre , presence: { message: " es requerido"}  , confirmation: true
  validates :costo , presence: { message: " es requerido"}  , confirmation: true
  validates :costo, numericality: { only_integer: true ,message: "no es un numero"}
end
