module RPSGame
  class Sign
    @@options = ['Rock', 'Paper', 'Scissors']
    def initialize
      puts @@options
    end
    def self.options
      @@options
    end
    def choose
      puts "Rock, Paper, or Scissors?"
      @sign = gets.chomp.capitalize!
      while @@options.include? @sign
        puts "Please choose Rock, Paper, or Scissors"
        @sign = gets.chomp.capitalize!
      end
      @sign
    end
    def assign
      generate = Random.new
      index = generate.rand 0..2
      @sign = @@options[index]
    end
    def evaluate sign1, sign2
      case sign1
      when "Rock"
        case sign2
        when "Rock"
          return "tie"
        when "Paper"
          return sign2
        when "Scissors"
          return sign1
        end
      when "Paper"
        case sign2
        when "Rock"
          return sign1
        when "Paper"
          return "tie"
        when "Scissors"
          return sign2
        end
      when "Scissors"
        case sign2
        when "Rock"
          return sign2
        when "Paper"
          return sign1
        when "Scissors"
          return tie
        end
      end
    end
  end
end
