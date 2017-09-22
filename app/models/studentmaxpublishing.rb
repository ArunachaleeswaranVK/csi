class Studentmaxpublishing < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    
    has_many :publishingdetailbystudents , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbystudents , allow_destroy: true
    
 
end
