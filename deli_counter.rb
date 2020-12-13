require "pry"
katz_deli = []

def line(katz_deli)
    if katz_deli.empty?
    puts "The line is currently empty."
    else
        # make a string that repeats "The line is currently:"
        # take each name and add a number in front that 
        #   reps spot in line and add that to the statement
        # print the statement
    status = ["The line is currently:"]
    katz_deli.each.with_index(1) do |name, index|
            status.push("#{index}. #{name}")
    end
    puts status.join(" ")
    end
end 

def take_a_number(katz_deli, name)
    katz_deli.push(name) 
    number = katz_deli.length
    puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.shift}."
    end
end