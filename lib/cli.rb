require 'tty-prompt'

class CLI


def greet
    puts "Welcome to TicketBox!"
end

def run
    action_entered = "" 
    while action_entered != "exit"
     prompt = TTY::Prompt.new
     action_entered = prompt.select("How can we help you today?", ["create", "view/update", "delete", "exit"])        
      if action_entered == "create"
        create
      elsif action_entered == "view/update"
        view_update
      elsif action_entered == "delete"
        delete
      end

    end
  end


def create 
    p "Please enter your name:"
    user_name_entered = gets.chomp
    new_user = User.find_or_create_by(name: user_name_entered)
    print_bands(Band.all)    
        p "Please select from our featured artists and bands!"
        band_name_entered = gets.chomp 
        band = Band.find_by!(name: band_name_entered)
    # print_concerts(Concert.all)
    # p "Please select which tour you would like to attend!"
    # concert_name_entered = gets.chomp
    # concert = Concert.find_by(title: concert_name_entered)
    
    p "Here are the concerts with venues for your choice!"
    band.concerts

  end



  def print_concerts (concerts)
    concerts.map {|concert| puts "#{concert.title}: #{concert.venue}"}.join(", ")
  end 

  def print_bands (bands)
    bands.map {|band| puts "#{band.name}: #{band.genre}"}.join(", ")
  end 




end

# def print_bands
# Band.map {|b|b.name}
# end 


# print_bands(Band.all)    
#     p "Please select from our featured artists and bands!"
#     band_name_entered = gets.chomp 
#     band = Band.find_by!(name: band_name_entered)