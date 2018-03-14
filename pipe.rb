class Pipe

  def initialize(commands)
    @commands = commands
  end

  def run(context)
    data = nil
    @commands.each do |command|
      data = command.run(context)
    end
    data
  end

end
