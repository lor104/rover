# string.split(//) - will split a string into an array of characters
#
# INSTRUCTIONS
# There's a lot of different aspects to this problem. This is a great opportunity to practice your problem solving skills! The most important step is to start by breaking things down into small pieces and solve one thing at a time.
#
# Given that we're practicing Object-Oriented Programming, we're going to want to focus on identifying different "things" in this program.
#
# What is the easiest "thing" to reason about here? The Rover! We can already start picturing rovers moving across Mars.

#####======start by defining a class as Rover
  class Rover

    @@direction = {"N" => 0, "E" => 1, "S" => 2, "W" => 3}

    def initialize(x, y, d)
      @x = x
      @y = y
      @d = d
    end

    def read_instruction(string)
      instructions = string.split(//)
      instructions.each do |letter|
        if letter = "L"
          turn_left
        elsif letter = "R"
          turn_right
        elsif letter = "M"
          move
        end
    end

    def move
      if @d == "N"
        @y +=1
      elsif @d =="E"
        @x +=1
      elsif @d =="S"
        @y -=1
      elsif @d =="W"
        @x -=1
      end

    end

    def turn_left
      @d = @direction[@d]
      @d += 1
      if @d > 3
        @d -= 4
      end
      @d = @direction.key(@d)
    end

    def turn_right
      @d = @direction[@d]
      @d -= 1
      if @d < 0
        @d += 4
      end
      @d = @direction.key(@d)
    end
  end
#
# As we already know, objects have state and behaviour. In Ruby, our classes have instance variables and methods. What kind of state do we need for our rovers? What about behaviours?
#
# State
#
@x # x coordinate
@y # y coordinate
@d # direction
@direction = {:N => 0, :E => 1, :S => 2, :W => 3} #dictionary of direction as a value


# Behaviour
#
# read instruction
  take the input of a string, convert it to an array
  string.split(//) = instructions
  iterate through instructions[], and for each iteration (instructions[0], instructions[1], etc) find whether its an L M or an R

  if its an L or an R
    call on the turn method

  if its an M


# turn
  if L
    subtract 1 from d
  if R
    add 1 to d


# move
  if d points to 0 therefore N
    add 1 to y value
  if d points to 1 therefore E
    add 1 to x value
  if d points to 2 therefore S
    subtract 1 from the y value
  if d points to 3 therefore W
    subtract 1 from the x value

  if d points to a number greater than 4, subtract 4 from d
  if d points to a number less than 0, add 4 to d



# Start by creating a Rover class that has these properties. Given that each rover starts with a location and direction, perhaps it's a good idea to have an initialize method for each rover that accepts these parameters.
#
# Next up we'll need to think about behaviour. Behaviours have the ability to read and affect the state of an object. We express those as methods.
#
# read_instruction should accept an instruction and decide whether to tell the rover to move or turn. It simply delegates to more specific behaviour.
#
# move affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates.
#
# turn affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.
#
# Once you've figured out how to move and turn your rover, the rest gets much easier because you got the seemingly complex stuff out of the way first! All you'll need to figure out from here is how to read and split up the instructions so that you can pass them on to your rovers.
