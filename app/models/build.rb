class Build < ActiveRecord::Base
    has_many :parts

    def total_price
      parts.sum(:price)
    end
end