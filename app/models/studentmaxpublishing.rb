class Studentmaxpublishing < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
end
