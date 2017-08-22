class Paperpresenterintconference < ActiveRecord::Base
     belongs_to :institute, foreign_key: "imno"
     
     has_many :insideindiapaperpresentations , dependent: :destroy
     accepts_nested_attributes_for :insideindiapaperpresentations , allow_destroy: true 
     
     has_many :outsideindiapaperpresentations , dependent: :destroy
     accepts_nested_attributes_for :outsideindiapaperpresentations , allow_destroy: true
end
