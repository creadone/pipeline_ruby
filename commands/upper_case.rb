class UpperCase < Command
  def self.run(context)
    context.upcase!
  end
end
