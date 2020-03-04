class CreateConcertsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :title 
      t.integer :band_id 
      t.integer :venue_id
    end 
  end
end
