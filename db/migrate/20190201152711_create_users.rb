class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :name
    t.text :email
    t.integer :phone_number
    t.text :description
    t.timestamps
    end
  end
end
