class Pushup
  attr_accessor :date_month, :date_day, :total_pushups, :total_sets, :duration, :best

  def initialize(date_month, date_day, total_pushups, total_sets, duration, best)
    @date_month = date_month
    @date_day = date_day
    @total_pushups = total_pushups
    @total_sets = total_sets
    @duration = duration
    @best = best
  end

  def to_s
    "On #{@date_month} #{@date_day} you did - total pushups: #{@total_pushups}, total sets: #{@total_sets}, duration: #{@duration}mins, best set was: #{@best}"
  end
end
