class Grid
    attr_reader :play_area

    # Creates and initializes a n*n array (play area) 
    def initialize(grid_size)
        grid_size = grid_size < 3 ? 3 : grid_size
        @play_area = Array.new(grid_size, Array.new(grid_size))
    end

    def make_move(player, position)
        row, col = position[:row], position[:col]
        unless play_area[row][col].nil?
            play_area[row][col] = PLAY_SYMBOLS[player]
            game_won?(play_area, PLAY_SYMBOLS[player])
        else
            nil
        end
    end

    private
    PLAY_SYMBOLS = { player_1: :x, player_2: :o }
end