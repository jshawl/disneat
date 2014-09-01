class CreateRestauraunts < ActiveRecord::Migration
  def change
    create_table :restauraunts do |t|
      t.string :name
      t.boolean :serves_alcohol
    end
  end
end
