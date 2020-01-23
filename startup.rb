require_relative 'GameLogic/tictactoe'

grid_size = ARGV[0].to_i
puts "Welcome to Tic-Tac-Toe!"

unless grid_size > 0
    puts "Please enter the size of grid you want to play on:"
    grid_size = gets.chomp.to_i    
end


game = TicTacToe.new(grid_size)
game.display_grid
game_over = false

until game_over
    game_over = game.next_turn(game.take_input)
end