class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  before_destroy :check_doses

  def check_doses
    raise ActiveRecord::InvalidForeignKey unless self.doses.empty?
  end
end
