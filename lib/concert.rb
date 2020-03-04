class Concert < ActiveRecord::Base  
belongs_to :band 
belongs_to :venue 
has_many :tickets 
has_many :users, through: :tickets 

end 