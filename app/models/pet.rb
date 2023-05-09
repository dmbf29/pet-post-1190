class Pet < ApplicationRecord
  # associations
  # validations
  validates :address, presence: true
  validates :found_on, presence: true
  SPECIES = ['dog', 'cat', 'bird', 'frog', 'spider', 'rock']
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
# Pet::SPECIES.sample
