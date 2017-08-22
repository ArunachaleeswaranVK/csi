class Paperpresenterintconference < ActiveRecord::Base
     belongs_to :institute, foreign_key: "imno"
     
     has_many :paperpresentationdetails , dependent: :destroy
     accepts_nested_attributes_for :paperpresentationdetails , allow_destroy: true 
     
    validates :candidate_csi_membership_no, presence: true    
    validates :valid_till, presence: true 
    validates :imno, presence: true
    validates :faculty_name, presence: true 
    validates :faculty_email, presence: true 
end
