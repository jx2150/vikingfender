class Fender < ActiveRecord::Base
  named_scope :bow, :conditions => { :fender_type => 'bow'}
  named_scope :side, :conditions => { :fender_type => 'side'}
  named_scope :stern, :conditions => { :fender_type => 'stern'}
  named_scope :yacht, :conditions => { :fender_type => 'yacht'}
end
