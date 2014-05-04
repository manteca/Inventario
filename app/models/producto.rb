class Producto < ActiveRecord::Base
  has_many :almacenajes
  has_many :bodegas, :through => :almacenajes
end
