class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized
  include Placeholder
  
  after_initialize :set_defaults
  def set_defaults
  self.badge ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
