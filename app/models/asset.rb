class Asset < ActiveRecord::Base
  
  belongs_to :fender
  
  has_attached_file :photo,
    :styles => {
    :thumb=> "100x100#",
    :small  => "300x300>",
    :large => "600x600>"
    }

end
