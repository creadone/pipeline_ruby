require_relative 'pipe'
require_relative 'storage'
require_relative 'command'
Dir.glob("commands/*.rb").each{ |c| require_relative c }
