class CreateTicketsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.integer :section
      t.integer :user_id
      t.integer :concert_id
    end 
  end
end
