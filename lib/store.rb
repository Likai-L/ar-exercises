class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :mens_or_womens
  def mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:womens_apparel, "men's apparel and women's apparel can't be both false")
    end
  end

end
