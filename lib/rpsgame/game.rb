module RPSGame
  class Game
    def initialize
      sign = Sign.new
      @user_sign = sign.choose
      @computer_sign = sign.assign
      puts "Computer chose #{@computer_sign}"
      @result = sign.evaluate @user_sign, @computer_sign
      puts "...and the winner is #{@result}"
    end
  end
end
