class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.string :nombre
    end
  end
end
