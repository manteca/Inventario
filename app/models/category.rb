class Category < ActiveRecord::Base
  #belongs_to :parent
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent, :class_name => "Category"

  def categoria_tree
    
  end
end
