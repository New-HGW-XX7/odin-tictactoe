class Board

  attr_reader :b

  def initialize
    @b = Array.new(3) { Array.new(3, nil) }
  end

  def display_board
    b.each { |i| puts "#{i} Row" }
  end

  def draw(x, y, sign)
    if b[x][y] != nil
      puts "Field not empty. Choose a new one."
      false
    else
      b[x][y] = sign
    end
  end

  def win

    if b[0][0] == b[0][1] && b[0][1] == b[0][2]
      Player.players[b[0][0]]


    elsif b[1][0] == b[1][1] && b[1][1] == b[1][2]
      Player.players[b[1][0]]


    elsif b[2][0] == b[2][1] && b[2][1] == b[2][2]
      Player.players[b[2][0]]


    # Vertical
    elsif b[0][0] == b[1][0] && b[1][0] == b[2][0]
      Player.players[b[0][0]]


    elsif b[0][1] == b[1][1] && b[1][1] == b[2][1]
      Player.players[b[0][1]]


    elsif b[0][2] == b[1][2] && b[1][2] == b[2][2]
      Player.players[b[0][2]]


    # Diagonal
    elsif b[0][0] == b[1][1] && b[1][1] == b[2][2]
      Player.players[b[0][0]]


    elsif b[0][2] == b[1][1] && b[1][1] == b[2][0]
      Player.players[b[0][2]]

    else
      nil

    end
  end
end

class Player

  @@players = {}
  def self.players
    @@players
  end

  attr_reader :name, :sign

  def initialize(name, sign)
    @name = name
    @sign = sign
    @@players[sign] = name
  end

  def choose
    puts "Choose row"
    x = gets.chomp.to_i
    puts "Choose column"
    y = gets.chomp.to_i
    return [x, y, sign]
  end


end
############################################
# adam = Player.new('Adam', 'X')
# francis = Player.new('Franics', 'O')
# p Player.players


# board = Board.new
# board.display_board

# i = 0
# while i <= 8 do
#   i.even? ? name = adam : name = francis
#   puts "Eliza: It's your turn, #{name.name}."
#   success = false

#   while success == false
#     choice = name.choose

#     success = board.draw(choice[0], choice[1], choice[2])
#     board.display_board

#   end

#   winner = board.win

#   return puts "Eliza: #{winner} wins." if winner != nil
#   i += 1
# end

# puts 'Game over. Tie.'