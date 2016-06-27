dir_name = "../../W1D5"

Dir.glob("#{dir_name}/**/*.*").sort_by{ |fname| File.size(fname)}.reverse[0...10].each do |file_name|
  puts "#{file_name}\t#{File.size(file_name)}"
end