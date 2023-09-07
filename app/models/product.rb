class Product < ApplicationRecord
  validates :name, confirmation: true
  validates :name_confirmation, presence: true
end
