class Facmaxpublishing < ActiveRecord::Base
   
    belongs_to :user
    
    has_many :publishingdetailbyfaculties , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbyfaculties , allow_destroy: true
    
    validates :faculty_name, presence: true    
    validates :faculty_email, presence: true 
    
    validates :candidate_csi_membership_no, presence: true 
    validates :valid_till, presence: true  
    
end
