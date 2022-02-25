require_relative 'user'
require_relative 'game'
require 'colorize'

class App 
  attr_accessor :user 

  def initialize
    welcome
    @user = create_user
  end

  def welcome
    puts "Welcome to my App".colorize(:green)
    puts "Let's get started".colorize(:green)
  end

  def create_user
    puts "What is your first name?".colorize(:blue)
    f_name = gets.strip
    puts "What is your last name?".colorize(:blue)
    l_name = gets.strip
    puts "How old are you?".colorize(:blue)
    age = gets.strip.to_i

    @user = User.new(f_name, l_name, age)
    # puts @user.first_name
    # puts @user.last_name
    # puts @user.age
    menu
  end

  def menu 
    puts "1. Play a game to change your age".colorize(:yellow)
    puts "2. Exit".colorize(:red)
    menu_choice = gets.strip.to_i 

    if menu_choice == 1 
      # puts "game"
      Game.new(@user)
      menu
    elsif menu_choice == 2
      puts "Good Bye"
      exit
    else
      menu
    end
  end
end

app = App.new