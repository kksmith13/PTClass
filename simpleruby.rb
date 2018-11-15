class Tournament
  def initialize
      @seeds = {}
  end

  def add(key_value)
      key_value.each do |key, value|
          @seeds[key] = value
      end
  end

  def seed
      @seeds.keys
  end

  def team
      @seeds.values
  end

  def list
      @seeds
  end
end

def is_number?(obj)
  obj.to_s == obj.to_i.to_s
end

def get_number(prompt)
  x=""
  while x.to_i.to_s != x do
      print prompt
      x=gets.chomp
  end
  x
end

class Menu
  def initialize
      @items= {   1 => "Enter teams",
                  2 => "List teams",
                  3 => "List matchups",
                  0 => "Exit program" 
              }
  end

  def sel_num
      @items.keys
  end

  def sel_desc
      @items.values
  end

  def list
      @items
  end
end

puts `clear`
@tournament=Tournament.new
@menu=Menu.new



selection = 99

until selection==0 do
while selection < 0 || selection > 5 
  puts `clear`
  @menu.list.each do |num, desc|
      print "#{num}" + ". " + "#{desc}. \n"
  end
  puts
  selection = get_number("Welcome to My Tournament Generator. Enter a Selection: ").to_i
end
puts `clear`

case selection
when 0
  exit(true)
when 1  
  done=""
  until done=="n" do
      puts `clear`
      seed = get_number("Enter seed: ").to_i
      print "Enter Team Name: "
      team = gets.chomp.to_s
      @tournament.add(seed => team)
      puts
      print "Another(y/n)?"
      done = gets.chomp.to_s.downcase
  end
when 2
  matchups = @tournament.list.sort_by {|seed, team| seed}
  puts "This is the current list."
  puts
  printf "%6s %s\n", "Seed", "Team"
  printf "%6s %s\n", "----", "----"
  matchups.each do |seed, team|
      printf "%6s %s\n", "#{seed}", "#{team}"
  end
  puts
  puts "Press ENTER to continue."
  gets.chomp
when 3
  tourney = []
  matchups.each do |pair|
      tourney << pair
  end

  count=tourney.count.to_i
  
  if count%2 != 0 
      bye = true
  end

  while count>0 do
      first = tourney.shift
      print "(#{first[0]}) #{first[1]} vs "
      count-=1
      if bye==true
          print "BYE \n"
          bye=false
      else 
          second = tourney.pop
          print "(#{second[0]}) #{second[1]} \n"
          count-=1
      end
  end
  
  puts
  puts "Press ENTER to continue."
  gets.chomp
when 4
  @tournament.add( 1 => "LSU")
  @tournament.add(2 => "AL")
  @tournament.add(3 => "MS")
  @tournament.add(4 => "NV")
  @tournament.add(5 => "FL")
else
  puts selection
end

selection = 99
end