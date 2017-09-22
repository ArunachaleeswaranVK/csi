class Studentbranchactivist < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    has_many :eventdetailsbystudentactivists , dependent: :destroy
    accepts_nested_attributes_for :eventdetailsbystudentactivists , allow_destroy: true
    
    
end
