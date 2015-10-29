class Person
	def initialize(name)
		@name = name
	end
	def greeting
		puts "Hi my name is #{@name}"
	end

end

class Student < Person

	def learn
		puts "I get it!"
	end

end

class Instructor < Person

	def teach
		puts "Everything in Ruby is an Object"
	end
end

chris = Instructor.new("Chris")
chris.greeting
chris.teach
#chris.learn

cristina = Student.new("Cristina")
cristina.greeting
cristina.learn
#cristina.teach

# the reason the learn method does not work when called with
# chris is because the teacher class does not include the behaviours of a students.
# The same thing goes for cristina, the teach method cannot be called with her because as a student the beahviours
# of a teacher are not shared.







# puts Instructor.greeting
# puts Student.greeting



