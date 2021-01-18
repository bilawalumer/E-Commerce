class Product < ApplicationRecord
  has_one_attached :attachment

  include Searchable
  
end
