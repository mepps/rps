module RPS
  class User
    attr_accessor :sign, :name
    def greet
      "Welcome #{self.name}! I hope you've sharpened your fist-shaking skills..."
    end
  end
end
