# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of 
#"Hello, World" for the given language. The default should be English. Test your code with THREE method calls. 
# Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

# es: "Hola Nundo"
# de: "Hallo Welt"

class HelloWorld
    def hello_world
        puts "Hello World"
    end
   def es
      puts "Hola Mundo"
   end
   def de
       puts "Hallo Welt"
   end
end

hello = HelloWorld.new
hello.hello_world
hello.es
hello.de


# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. 
# Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade number

    if number <=100 && number >90
        "A"
    elsif number <=90 && number >80
        "B"
    elsif number <=80 && number >70
        "C"
    elsif number <=70 && number >60
        "D"
    else
        "F"
    end
end
puts assign_grade (96)
puts assign_grade (75)
puts assign_grade (84)

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. 
# Copy and paste the original code below to add the exceptions.
def assign_grade number

    if number <0 || number>100
        "Invalid Grade Point!"
    elsif number <=100 && number >90
        "A"
    elsif number <=90 && number >80
        "B"
    elsif number <=80 && number >70
        "C"
    elsif number <=70 && number >60
        "D"
    else
        "F"
    end
end
puts assign_grade (-1)
puts assign_grade (101)


# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, 
# if necessary. Test your code with THREE method calls. 
# Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
def pluralizer number, noun
    if number <= 0
        "#{noun} are not available!"
    elsif number == 1
        "#{number} #{noun}"   
    else
        "#{number} #{noun}s"
    end
end
puts pluralizer 5,'cat'
puts pluralizer 1,'dog'
puts pluralizer 0, 'parrot'


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the 
# exceptions to your code. Copy and paste the original code below to add the exceptions.

def pluralizer number, noun
    if number <= 0
        "#{noun} are not available!"
    elsif number == 1
        "#{number} #{noun}"   
    else
        if noun.downcase == 'sheeps'
            noun = 'sheep'
        elsif noun.downcase == 'goose'
            noun = 'geese'
        elsif noun.downcase == 'child'
            noun = 'children'
        else
            noun = noun.concat('s')
        end
        "#{number} #{noun}"
    end
end
puts pluralizer 7,'sheep'
puts pluralizer 5,'goose'
puts pluralizer 3,'child'