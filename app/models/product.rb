class Product < ApplicationRecord
  validates :name, confirmation: true
end
