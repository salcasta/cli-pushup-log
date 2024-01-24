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
        pushup_entry(@date_month, @date_day, @total_pushups, @total_sets, @duration, @best, @avg, @set_time)
          
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

  def pushup_entry(date_month, date_day, total_pushups, total_sets, duration, best, avg, set_time)
    entry = Pushup.new(date_month, date_day, total_pushups, total_sets, duration, best, avg, set_time)
    @pushups << entry
    puts "\n"
    puts "WORKOUT WAS ADDED."
    puts "\n"
  end

  def view_log()
    if @pushups.empty?
        puts "\n"
        puts "THERE IS NO WORKOUT IN YOUR LOG"
        puts "\n"
    else
        puts "\n"
        puts "WORKOUTS IN YOUR LOG:"
        puts "\n"
        @pushups.each do |workout|
          puts workout
        end
        puts "\n"
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
    @avg = (@total_pushups.to_i / @total_sets.to_i)
    @set_time = (@duration.to_i / @total_sets.to_i)
  end
end
