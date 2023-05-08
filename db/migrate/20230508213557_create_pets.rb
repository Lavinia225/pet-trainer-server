class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :trainer_id
      t.string :species
      t.string :breed
      t.string :working_on
      t.integer :age
      t.string :gender
      t.string :personality
    end
  end
end
