class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :category
      t.integer :users

      t.timestamps
    end
  end
end
