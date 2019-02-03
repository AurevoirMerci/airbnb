class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
    t.integer :beds
    t.integer :price
    t.text :description
    t.string :wifi
    t.text :welcome
    t.belongs_to :city, index: true
    t.belongs_to :user, index: true
    t.timestamps
    end
  end
end
