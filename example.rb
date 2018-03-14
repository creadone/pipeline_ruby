require_relative 'pipeline'

pipe = Pipe.new [
  UpperCase,
  ReverseChars
]

result = pipe.run("Working fine!")
puts result #=> !ENIF GNIKROW
