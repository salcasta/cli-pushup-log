class Pushup
  attr_accessor :date_month, :date_day, :total_pushups, :total_sets, :duration, :best, :avg, :set_time

  def initialize(date_month, date_day, total_pushups, total_sets, duration, best, avg, set_time)
    @date_month = date_month
    @date_day = date_day
    @total_pushups = total_pushups
    @total_sets = total_sets
    @duration = duration
    @best = best
    @avg = avg
    @set_time = set_time
  end

  def to_s
    "On #{@date_month} #{@date_day} you did - TOTAL PUSHUPS: #{@total_pushups}, TOTAL SETS: #{@total_sets}, your AVERAGE was #{@avg} per set, DURATION: #{@duration}mins, your average set took #{@set_time}mins, MAX set was: #{@best}"
  end
end
