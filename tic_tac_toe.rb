class Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def start_game        
        puts "#{@player1} will be playing as X and #{@player2} will be playing as O"
        game_turns
    end

    def empty_board
        @row1 = ["_|","_|","_"]
        @row2 = ["_|","_|","_"]
        @row3 = [" |"," |"," "]
        puts @row1.join("")
        puts @row2.join("")
        puts @row3.join("")
    end

    def game_turns
        puts "#{@player1} turn: "
        player_1_turn = gets.to_i
        board_att(player_1_turn)
    end

    def board_att(play)
        if play >= 1 && play <= 3
           @row1[play - 1] = "x"
           puts @row1.join("")
        end
    end

end

puts "Player 1 name: "
player1 = gets
puts "Player 2 name: "
player2 = gets

new_game = Game.new(player1, player2)
new_game.empty_board
new_game.start_game
