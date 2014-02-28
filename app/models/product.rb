class Product < ActiveRecord::Base
    validates :name, 
                    presence: true,
                    length: {maximum: 255}
    validates :stock,
                    numericality: { only_integer: true }
end
