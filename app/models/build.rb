class Build < ActiveRecord::Base
    belongs_to :user
    has_many :lists
    has_many :parts, through: :lists

end