class Fender < ActiveRecord::Base
  scope :bow, :conditions => { :fender_type => 'bow'}
  scope :side, :conditions => { :fender_type => 'side'}
  scope :stern, :conditions => { :fender_type => 'stern'}
  scope :yacht, :conditions => { :fender_type => 'yacht'}
  
  # Paperclip
  #has_attached_file :photo, :styles => {:thumb=> "100x100#", :small  => "150x150>", :large => "600x600>" }

  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
end
