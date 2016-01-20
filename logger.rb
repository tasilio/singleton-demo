class Logger
	def initialize
		@f = File.open 'log.txt', 'a'
	end
	
	@@x = Logger.new

	def self.instance # обозначение того, что это класс по паттерну синглтон
		
		return @@x

	end

	# class method
	def self.say_something
		puts "haha"
	end
	# instance method
	def log_something what  # Если приложение разрастется постоянное открытие и закрытие будет тормозить работу
		@f.puts what
	end
	
	private_class_method :new # метод new можно вызвать только внутри класса

end