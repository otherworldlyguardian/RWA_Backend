class Field < ApplicationRecord
  belongs_to :client
  has_many :forms
end
