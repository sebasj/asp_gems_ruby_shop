class LineItem < ActiveRecord::Base
    belongs_to :orders
    belongs_to :products
end
