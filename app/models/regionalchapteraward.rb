class Regionalchapteraward < ActiveRecord::Base
    belongs_to :user
    
    has_many :eventsforregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :eventsforregionalchapterawards , allow_destroy: true 
    
    has_many :techactivitiesregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :techactivitiesregionalchapterawards , allow_destroy: true 
    
    has_many :newslettersforregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :newslettersforregionalchapterawards , allow_destroy: true 
end
