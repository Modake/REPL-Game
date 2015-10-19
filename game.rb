# MAIN PARTS
def partone
  clear
  puts "You awaken in a dark forest, fully dressed except for your pants."

  choices = [
    "[S]tand up and look around",
    "[R]oll over and go back to sleep"
  ]

  case input(choices)
  when "s"
    parttwo
  when "r"
    wolvesdead
  else
    error
  end
end

def parttwo
  clear
  puts "You stand up and stumble towards an old road. After walking for a few minutes you see the dim glow of civilization up ahead.
  \nA car pioleted by a gentlewoman approaches and pulls over. \nVisible on the passenger seat are the melted remains of three popscicles.
  \nShe tells you to get in the car, and pops the trunk."

  choices = [
    "[M]ove towards the the trunk",
    "[O]pen the car door",
    "[J]og away slowly"
  ]

  case input(choices)
  when "m"
    partthree
  when "o"
    walkingdead
  when "j"
    falldead
  else
    error
  end
end

def partthree
  clear
  puts "Looking inside the trunk you see a pair of refurbished brown pants. You throw them on the ground to make room as you climb in."
  puts "You ride in the trunk for what seems like hours. Suddenly the car stops and you hear the driver exit in a hurry. Gunshots. One pierces through the side of the trunk."

  choices = [
    "[E]xit the trunk",
    "[S]tay and wait it out"
  ]

  case input(choices)
  when "e"
    tripdead
  when "s"
    staydead
  else
    error
  end
end

# ENDINGS
def wolvesdead
  clear
  puts "During the night your flatulence attracted a pack of wolves.\nYou and your gas have both passed."
  gameovar
end

def falldead
  clear
  puts "As you turn to jog away your foot gets caught on a capitillar. The torsion on your tibia snaps it and you fall to the ground. The gentlewoman drives off, bewildered."
  gameovar
end

def tripdead
  clear
  puts "You stumble out of the trunk, trip on a rock, and pass out."
  gameovar
end

def staydead
  clear
  puts "After a few minutes someone gets in the car and speeds off. Eventually the car stops and you decide to get out."
  ending
end

def walkingdead
  clear
  puts "You open the car door and stand there. The three melted popscicles have left a small brown puddle on the white leather seat. You decide to walk."
  puts "After walking for hours with no civilization in sight, the sun finally rises."
  ending
end


# Get user input
def input choices
  space
  puts "What will you do?\n- - - - - - - - -"
  puts choices
  userinput = gets.chomp.downcase
end

# FORMATTING
def space
  5.times {puts "\n"}
end

def line
  2.times {puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"}
end

# Clear Screen
def clear
  system "clear"
end

# ENDING MECHANICS
def try_again
  puts "Try Again (Y/N)?"
  restart = gets.chomp.downcase
  case restart
  when "y"
    partone
  when "n"
    exit
  else
    try_again
  end
end

def gameovar

  space
  line
  puts "- - - - - - - - - - - G A M E - O V A R - - - - - - - - - - - -"
  line
  space
  try_again
end

def error
  space
  line
  puts "- - - - - - - - - - - - - -E R R O R- - - - - - - - - - - - - -"
  line
  puts "- - - - - - - - - - - -T R Y - A G A I N- - - - - - - - - - - -"
  line
  space
  try_again
end

def ending
space
line
puts "- - - - - - - - - - - G A M E - O V A R - - - - - - - - - - - -"
line
puts "- - - - - - - - - - - -G O O D - J O B- - - - - - - - - - - - -"
line
puts <<-EOP

              |
            ``_ /
          -= (_) =-
            /   ``                          _  _
              |                            //o   _  _
    _  ___  __  _ __ __ _  _ _  _ _ __  __ _ | __/oo  _
  =-=-_=-=-_=-=_=-_=_=-_=-_-_=_=-= _=_=-=_,-'|"'""-|-,_
   =- _=-=-_=- _=-= _--_ =-= -_=-=_-=_,-"          |
     =- =- =-= =- = -  -===- -= -= ."                 jgs
EOP
try_again
end


# Begin Adventure
clear
partone
