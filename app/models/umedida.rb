class Umedida < ActiveRecord::Base
  has_many :productos
  validates :nombre, presence: true
end
