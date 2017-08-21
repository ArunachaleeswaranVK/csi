class Studentbranchactivist < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    has_many :eventdetailsbystudentactivists , dependent: :destroy
    accepts_nested_attributes_for :eventdetailsbystudentactivists , allow_destroy: true
    
    validates :csi_volunteer_name, presence: true    
    validates :csi_volunteer_email, presence: true 
    validates :imno, presence: true
    validates :csi_volunteer_id, presence: true 
    validates :valid_till, presence: true
    validates :volunteers, presence: true 
    validates :volunteers_added, presence: true
end
