class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
