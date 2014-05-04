class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
