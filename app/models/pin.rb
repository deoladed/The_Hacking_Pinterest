class Pin < ApplicationRecord
  belongs_to :user
  has_many :pin
end
