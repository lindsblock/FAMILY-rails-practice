class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :genger
      t.string :hair_color
      t.string :eye_color

      t.timestamps
    end
  end
end
