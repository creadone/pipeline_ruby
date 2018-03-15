require_relative 'pipeline'
include Storage

pipe = Pipe.new [
  DetectDelimeter
]

result = pipe.run("Depeche mode, Eminem, Tiamat, Eminem feat Киркоров, Stacy#flash, Stacy#flash")
puts Storage.get(:delimeter)
