class Customer < ApplicationRecord
  belongs_to :age
  belongs_to :country
  has_many :tickets
end
