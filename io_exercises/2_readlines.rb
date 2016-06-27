require 'open-uri'

@url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"

def read_and_print_first
  puts open(url).readline
end

def read_and_print_42
  local_file = File.open("hamlet.txt", "w") { |file| file.write(open(@url).read) }

  local_file = File.open("hamlet.txt", "r") do |file| 
    file.readlines.each_with_index do |line, i|
      puts line if i % 41 == 0
    end
  end
end

def print_ham
  local_file = File.open("hamlet.txt", "r") do |file| 
    file.readlines.each do |line|
      line.strip.match(/^Ham. /) { |m| puts line.strip if m }
    end
  end
end

print_ham