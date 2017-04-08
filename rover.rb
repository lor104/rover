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
      if letter == "L"
        turn_left
      elsif letter == "R"
        turn_right
      elsif letter == "M"
        move
      end
    end
    puts "#{@x} #{@y} #{@d}"
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
    @d = @@direction[@d]
    @d -= 1
    if @d < 0
      @d += 4
    end
    @d = @@direction.key(@d)
  end

  def turn_right
    @d = @@direction[@d]
    @d += 1
    if @d > 3
      @d -= 4
    end
    @d = @@direction.key(@d)
  end
end

rover = Rover.new(1, 2, "N")
rover.read_instruction("LMLMLMLMM")

rover2 = Rover.new(3, 3, "E")
rover2.read_instruction("MMRMMRMRRM")
