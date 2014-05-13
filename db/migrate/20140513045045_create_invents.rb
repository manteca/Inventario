class CreateInvents < ActiveRecord::Migration
  def change
    create_table :invents do |t|
      t.string :tipo
      t.text :nota

      t.timestamps
    end
  end
end
