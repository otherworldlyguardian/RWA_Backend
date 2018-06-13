class Form < ApplicationRecord
  belongs_to :user
  belongs_to :field
  has_one :client, through: :field
end
