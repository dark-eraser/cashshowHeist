
class D
  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/question.jpg.txt").map(&:chomp).join(" ").each_line do |line|
    $question = line.gsub("’", " ")
    $question= line.gsub("?", " ")
    puts $question

  end

  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep3.jpg.txt").map(&:chomp).join(" ").each_line do |line|
    $rep3 = line.gsub("’", " ")
    $rep3 = line.gsub("?", " ")
    puts $rep3
  end

puts "---------------------------------------------------"
end
