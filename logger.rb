require 'singleton'

class Logger
	
	include Singleton

	def initialize
		@f = File.open 'log.txt', 'a'
	end
	
	def log_something what  # Если приложение разрастется постоянное открытие и закрытие будет тормозить работу
		@f.puts what
	end

end