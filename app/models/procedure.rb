class Procedure < ActiveRecord::Base
  belongs_to :patient
  belongs_to :employee
  
  after_initialize :default_values

  private
    def default_values
      if self.new_record?
        self.feccreacion ||= DateTime.now.strftime('%d/%m/%Y')
        self.horacreacion ||= DateTime.now.strftime('%I:%M:%S')
      end
    end




end
