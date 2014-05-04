class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre
      t.references :parent, index: true

      t.timestamps
    end
  end
end
