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

  has_attached_file :actual, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :actual, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_attached_file :final, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :final, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_attached_file :odontograma, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :odontograma, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_attached_file :placa1, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :placa1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_attached_file :placa2, styles: { medium: '300x300>', thumb: '48x48>' }
  validates_attachment_content_type :placa2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
