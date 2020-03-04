class CreateVenuesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :city
      t.string :name_of_venue 
    end 
  end
end
