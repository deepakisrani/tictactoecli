require_relative 'player'

class Computer < Player
    def initialize(id, symbol, grid_size)
        super(id, symbol)
        @selection_range = 0..grid_size
    end

    private
    attr_reader :selection_range
end