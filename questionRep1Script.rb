
class D
  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/question.jpg.txt").map(&:chomp).join(" ").each_line do |line|
    $question = line.gsub("’", " ")
    $question = line.gsub("?", " ")
    puts $question

  end

  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep1.jpg.txt").map(&:chomp).join(" ").each_line do |lines|
    $rep1 = lines.gsub("’", " ")
    $rep1 = line.gsub("?", " ")
    puts $rep1
end

puts "---------------------------------------------------"
end
