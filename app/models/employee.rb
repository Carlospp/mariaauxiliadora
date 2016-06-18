class Employee < ActiveRecord::Base
  has_many :procedures
  belongs_to :position
  belongs_to :user 
  attr_accessor :employee
  attr_accessor :position
  accepts_nested_attributes_for :procedures

  # Confirmamos el email y validamos que no sean vacios con presence
  # mostramos el mensaje de error con message
  validates :email , presence: { message: " es requerido"}  , confirmation: true
  validates :nombre , presence: { message: " es requerido"} , confirmation: true
  validates :apellido , presence: { message: " es requerido"} , confirmation: true
  validates :celular, presence: { message: " es requerido"} ,confirmation:true
  validates :dni, presence: {message: "es requerido"}, confirmation:true

  # Validamos en una expresion regular nuestro email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "el formato del correo es invalido" }

  # Validamos que el identificador tenga entre 8 a 12 caracteres
  validates :telefono, length: { in: 7..9 , message: "debe tener entre 7 y 9 caracteres"}
  validates :celular, length: { in: 9..12 , message: "debe tener entre 9 y 12 caracteres"}
  validates :dni, length: { in: 8..9 , message: "debe tener 8 numeros"}

  # Validamos que el identificador solo sea numerico
  validates :telefono, numericality: { only_integer: true ,message: "no es un numero"}
  validates :celular, numericality: { only_integer: true ,message: "no es un numero"}
  validates :dni, numericality: { only_integer: true ,message: "no es un numero"}

  # Validamos que el email sea unico
  validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :codCOP, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :dni, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}


  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
