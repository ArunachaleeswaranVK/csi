class Paperpresenter < ActiveRecord::Base
    belongs_to :institute  , foreign_key: "imno"
    
    has_many :paperpresenterdetails , dependent: :destroy
    accepts_nested_attributes_for :paperpresenterdetails , allow_destroy: true
    
    validates :faculty_name, presence: true    
    validates :faculty_email, presence: true 
    validates :faculty_number, presence: true
    validates :imno, presence: true
    validates :faculty_csi_membership_no, presence: true 
    validates :valid_till, presence: true  
end
