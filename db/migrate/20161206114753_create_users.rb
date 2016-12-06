class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.boolean :infected, :default => false

      t.timestamps
    end
  end
end
