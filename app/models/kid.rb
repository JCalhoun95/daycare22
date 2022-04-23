class Kid < ApplicationRecord
  validates :name, presence:true, length: {minimum: 2, maximum: 100}
  validates :description, presence:true, length: {minimum: 5, maximum: 300}
  validates :age, presence:true, length: {minimum: 1, maximum: 3}
  # belongs_to :families
  # has_many :parents, through: :families
    scope :age_range, -> { where("RANGE(age) > ")}
end