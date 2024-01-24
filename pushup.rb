class Pushup
  attr_accessor :total_pushups, :total_sets, :duration, :best

  def initialize(total_pushups, total_sets, duration, best)
    @total_pushups = total_pushups
    @total_sets = total_sets
    @duration = duration
    @best = best
  end

  def to_s
    "Your workout: total pushups: #{@total_pushups}, total sets: #{@total_sets}, duration: #{@duration}mins, best set was: #{@best}"
  end
end
