class Producto < ActiveRecord::Base
  has_many :almacenajes
  has_many :bodegas, :through => :almacenajes

  belongs_to :umedida
  belongs_to :category
  
  validates :nombre, presence: true
end
