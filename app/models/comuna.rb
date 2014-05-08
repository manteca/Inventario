class Comuna < ActiveRecord::Base
  validates :nombre, presence: true
end
