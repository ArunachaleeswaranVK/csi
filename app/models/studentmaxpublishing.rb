class Studentmaxpublishing < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    
    has_many :publishingdetailbystudents , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbystudents , allow_destroy: true
    
    validates :csi_volunteer_name, presence: true    
    validates :csi_volunteer_email, presence: true 
    validates :imno, presence: true
    validates :csi_volunteer_id, presence: true 
    validates :valid_till, presence: true 
end
