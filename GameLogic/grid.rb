class Grid
    attr_reader :play_area

    # Creates and initializes a n*n array (play area) 
    def initialize (grid_size)
        @grid_size = grid_size < 3 ? 3 : grid_size
        @play_area = Array.new(grid_size, Array.new(grid_size))
    end

    def make_move (player, position)
        row, col = position[:row], position[:col]
        unless play_area[row][col].nil?
            play_area[row][col] = PLAY_SYMBOLS[player]
            check_win_condition(play_area, PLAY_SYMBOLS[player])
        else
            nil
        end
    end

    private
    PLAY_SYMBOLS = { player_1: :x, player_2: :o }
    attr_reader :grid_size

    def check_win_condition(play_area, last_sym)
        row_win = check_rows
    end

    def check_rows(play_area, last_sym)
        play_area.any? { |row| row.all? {|ele| ele == last_sym} }
    end

    def check_cols(play_area, last_sym)
end