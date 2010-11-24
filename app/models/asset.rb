class Asset < ActiveRecord::Base
  
  belongs_to :fender
  
  has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => {
        :access_key_id => ENV['S3_KEY'],
        :secret_access_key => ENV['S3_SECRET']
      },
      #"#{Rails.root}/config/s3.yml",
    :path => ":attachment/:id/:style/:basename.:extension",
    :bucket => ENV['S3_BUCKET'],
    :styles => {
      :original => "600x600>",
      :thumb=> "100x100#",
      :small  => "300x300>",
      :large => "600x600"
  }
  
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end