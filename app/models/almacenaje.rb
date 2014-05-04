class Almacenaje < ActiveRecord::Base
  belongs_to :productos
  belongs_to :bodegas
end
