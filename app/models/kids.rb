class Kid < ApplicationRecord
  belongs_to :families
  has_many :parents, through: :families
    scope :age_range, -> { where("RANGE(age) > ")}
  end
end