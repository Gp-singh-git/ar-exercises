class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :mens_or_womens_apparel_must
end

def mens_or_womens_apparel_must
  if !mens_apparel && !womens_apparel
    errors.add(:apparel_error, "store must at least one of the men's or women's apparel")
  end
end
