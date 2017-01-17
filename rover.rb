class Rover
  attr_reader :left, :right, :x, :y

  def initialize
    @direction = :n
    @x = 0
    @y = 0
  end

  def direction
    @direction
  end

  def forward
    if @direction == :n
      @y += 1
    elsif @direction == :s
      @y -= 1
    elsif @direction == :e
      @x += 1
    else
      @x -= 1
    end
  end

  def x
    @x
  end

  def y
    @y
  end

  def left
    if direction == :n
      @direction = :w
    elsif direction == :w
      @direction = :s
    elsif direction == :s
      @direction = :e
    else
      @direction = :n
    end
  end

  def right
    if direction == :n
      @direction = :e
    elsif direction == :e
      @direction = :s
    elsif direction == :s
      @direction = :w
    else
      @direction = :n
    end
  end

  def follow(command)
    @command = command

    command.split('').each do |c|
      if c == 'L'
        left
      elsif c == 'R'
        right
      else
        forward
      end
    end
  end
end

# coords
# x = 1
# y = -2
#
# commands
# L = turn left
# R = turn right
# F = move forward
#
# heading = [n, s, e, w]
#            0  1  2  3
#
# direction = :n
#
# west_to_east = [-4, -3, -2, -1, 0, 1, 2, 3, 4]
# south_to_north = [-4, -3, -2, -1, 0, 1, 2, 3, 4]
