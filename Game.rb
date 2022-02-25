require 'pry'
require_relative 'math'

class Game
  include Math
  attr_accessor :user


  def initialize(user)
    @user = user
    game_welcome
  end

  def game_welcome
  
    puts "Hello" + " " + @user.full_name
    puts "This is a game to change your age"
    puts "You just need to answer correctly to decrease your age"
    puts "But if you answer incorrectly we increase your age"

    guessing_game
  end

  def guessing_game
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    puts "Guess a number between 1 - 10"
    user_guess = gets.strip.to_i
    result = numbers.sample

    puts "The number is #{result}"
    if user_guess == result
      puts "You win"
      puts "You were #{@user.age}"
      new_age = @user.age - user_guess 
      @user.change_age(new_age)
      puts "Now you are #{@user.age}"
    else 
      puts "You lose"
      puts "You were #{@user.age}"
      new_age = @user.age + triple(user_guess) 
      @user.change_age(new_age)
      puts "Now you are #{@user.age}"
    end
  end
end