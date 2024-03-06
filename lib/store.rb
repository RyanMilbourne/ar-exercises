class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0, message: "must include a number greater than 0"}
  validate :must_carry_apparel

  private

  # Check if store carries apparel (either has to be true)
  def carries_apparel?
    mens_apparel || womens_apparel
  end

  # Can validate with "carries_apparel?" but this allows for an error if both are false
  def must_carry_apparel
    unless carries_apparel?
      errors.add(:base, "Stores must carry either mens_apparel or womens_apparel or both")
    end
  end

end
