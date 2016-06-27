dir_name = "../../W1D5"

files = Hash.new { |hash, key| hash[key] = Hash.new(0) }

Dir.glob("#{dir_name}/**/*.*").each do |fname|
  f_type = File.basename(fname).split(".").last
  files[f_type.to_sym][:count] += 1
  files[f_type.to_sym][:bytes] += File.size(fname)
end

local_file = File.open("dir_stats.txt", "w") do |file|
  file.puts("Filetype\tCount\tBytes")
  files.each do |(k,h)|
    file.puts("#{k.to_s.upcase}\t#{h[:count]}\t#{h[:bytes]}")
  end
end

