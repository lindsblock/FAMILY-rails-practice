class ChangeGengerToGender < ActiveRecord::Migration[5.1]
  def change
    rename_column :members, :genger, :gender
  end
end
