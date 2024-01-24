require_relative "pushup"

class Log
  def initialize
    @pushups = []
  end

  def main_menu
    puts "Hi! Welcome to your workout log!"

    loop do 
      puts 'Type "store" or "view" to see your past results or to add a new entry.'

      task = gets.chomp

      case task 
      
      when "store"
          log()
          pushup_entry(@date_month, @date_day, @total_pushups, @total_sets, @duration, @best)
          

      when "view"
          view_log()
        break

      else
        puts 'Try again, remember type "store" to add an entry or type "view" to see your past results.'
      end
    end
  end

 

  private

  def pushup_entry(date_month, date_day, total_pushups, total_sets, duration, best)
    entry = Pushup.new(date_month, date_day, total_pushups, total_sets, duration, best)
    @pushups << Pushup.new(date_month, date_day, total_pushups, total_sets, duration, best)
    puts "#{entry.to_s} has been added."
  end

  def view_log()
    puts "Workouts in the log:"
    @pushups.each do |workout|
      puts workout
    end
  end

  def log()
    puts "Enter the month."
    @date_month = gets.chomp.capitalize
    puts "Enter the day (number)."
    @date_day = gets.chomp
    puts "Enter the total amount of pushups you have done."
    @total_pushups = gets.chomp
    puts "Enter the total amount of sets you have done."
    @total_sets = gets.chomp
    puts "Enter how long it took to complete your workout (in minutes)."
    @duration = gets.chomp
    puts "Enter the most amount of reps you did in a single set."
    @best = gets.chomp
  end

end
