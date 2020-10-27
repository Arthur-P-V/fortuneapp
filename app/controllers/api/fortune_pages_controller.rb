class Api::FortunePagesController < ApplicationController
  def fortune_function
    fortunes = ["There is economic success in your future", "Romance is coming soon", "Your friends will need your support soon"]
    @fortune = fortunes.sample

    render "fortune.json.jb"
  end

  def lucky
    @numbers = []
    prng = Random.new
    6.times do
      random = prng.rand(1..60)
      @numbers << random
    end

    render "lucky.json.jb"
  end

  def bottles
    @lines = []
    number = 100
    100.times do
      if number == 0
        line = "No more bottles of beer on the wall, no more bottles of beer, go to the store buy some more no more bottles of beer on the wall"
        @lines << line
      elsif number == 1
        line = "#{number} bottle of beer on the wall, #{number}bottle of beer"
        @lines << line
        number = number - 1
        line = "take it down pass it around no more bottles of beer on the wall"
        @lines << line
      else
        line = "#{number} bottles of beer on the wall. #{number}"
        @lines << line
        number = number - 1
        line = "Take one down pass it around, #{number} bottles of beer on the wall"
        @lines << line
      end
    end
    render "bottles.json.jb"
  end
end
