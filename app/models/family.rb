class Family < ApplicationRecord
  has_many :kids
  has_many :parents
end