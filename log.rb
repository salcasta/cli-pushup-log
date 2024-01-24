require_relative "pushup"

class Log
  def initialize
    @pushups = []
  end

  def main_menu
    puts "Hi! Welcome to your workout log!"
    puts "\n"
    loop do 
      puts 'Type "store" to add a workout to your log.'
      puts "\n"
      puts 'Type "view" to see your past results.'
      puts "\n"
      puts 'Type "exit" to close the app.'

      task = gets.chomp

      case task 
      
      when "store"
        log()
        pushup_entry(@date_month, @date_day, @total_pushups, @total_sets, @duration, @best)
          
      when "view"
        view_log()

      when "exit"
        puts 'Goodbye!'
        break

      else
        puts 'Try again, remember type "store" to add a workout, "view" to see your past results, or "exit" to close the app.'
        puts "\n"
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
    if @pushups.empty?
        puts "There are no workouts in your log"
        puts "\n"
    else
        puts "Workouts in the log:"
        @pushups.each do |workout|
          puts workout
        end
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
