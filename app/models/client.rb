class Client < ApplicationRecord
  has_many :fields
  has_many :forms, through: :fields
end
