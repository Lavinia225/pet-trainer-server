class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.integer :age
      t.string :gender
      t.string :personality
      t.integer :trainer_id
      t.string :working_on
    end
  end
end
