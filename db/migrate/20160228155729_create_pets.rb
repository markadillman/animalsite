class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :species
      t.string :breed
      t.string :name
      t.string :age
      t.string :sex
      t.text :description

      t.timestamps null: false
    end
  end
end
