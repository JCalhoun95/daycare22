class Parent < ApplicationRecord
  belongs_to :families
  has_many :kids, through: :families
end