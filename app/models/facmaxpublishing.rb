class Facmaxpublishing < ActiveRecord::Base
   
    belongs_to :user
    
    has_many :publishingdetailbyfaculties , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbyfaculties , allow_destroy: true
    
   
    
end
