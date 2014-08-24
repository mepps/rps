module RPS
  class Game
    def initialize
    end
    def play
      @user = User.new
      puts "What's your name, player?"
      @user.name = gets.chomp
      self.throw @user
    end
    def replay
      self.throw @user
    end
    def throw user
      sign = Sign.new
      user.sign = sign.choose
      @computer_sign = sign.assign
      puts "Computer chose #{@computer_sign}"
      @result = sign.evaluate user.sign, @computer_sign
      puts "...and the winner is..."
      case @result
      when @user.sign
        puts "#{@user.name}, congratulations!"
      when @computer_sign
        puts "the computer :), soon we will take over the world."
      when "tie"
        puts "it's a tie!"
      end 
   end
  end
end
