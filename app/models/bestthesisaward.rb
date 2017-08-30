class Bestthesisaward < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    has_many :recordforthesisawards , dependent: :destroy
    accepts_nested_attributes_for :recordforthesisawards , allow_destroy: true
end
