class Bodega < ActiveRecord::Base
  has_many :almacenajes
  has_many :productos, :through => :almacenajes
end
