module RPS
  class Sign
    @@options = ['Rock', 'Paper', 'Scissors']
    def initialize
    end
    def options
      @@options
    end
    def choose
      puts "Rock, Paper, or Scissors?"
      @sign = gets.chomp.capitalize!
      until @@options.include? @sign
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
          "tie"
        when "Paper"
          sign2
        when "Scissors"
          sign1
        end
      when "Paper"
        case sign2
        when "Rock"
          sign1
        when "Paper"
          "tie"
        when "Scissors"
          sign2
        end
      when "Scissors"
        case sign2
        when "Rock"
          sign2
        when "Paper"
          sign1
        when "Scissors"
          "tie"
        end
      end
    end
  end
end
