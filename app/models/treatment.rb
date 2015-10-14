class Treatment < ActiveRecord::Base
  validates :nombre , presence: { message: " es requerido"}  , confirmation: true
  validates :costo , presence: { message: " es requerido"}  , confirmation: true
  validates :costo, numericality: { only_integer: true ,message: "no es un numero"}

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |student|
        csv << student.attributes.values_at(*column_names)
      end
    end
  end
end
