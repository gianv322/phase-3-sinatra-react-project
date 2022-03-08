class Part < ActiveRecord::Base
    has_many :lists
    has_many :builds, through: :lists

end