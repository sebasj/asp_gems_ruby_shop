class Product < ActiveRecord::Base
    validates :name, 
                    presence: true,
                    length: {maximum: 255}
    validates :stock,
                    numericality: { only_integer: true }
    has_many :line_items
    has_many :orders, through: :line_items
end
