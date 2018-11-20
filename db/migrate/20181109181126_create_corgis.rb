class CreateCorgis < ActiveRecord::Migration[5.2]
  def change
    create_table :corgis do |t|
      t.string :name
      t.integer :age
      t.text :enjoys

      t.timestamps
    end
  end
end
