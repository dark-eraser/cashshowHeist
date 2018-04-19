require "rubygems"
require "mechanize"
class D
  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/question.jpg.txt").map(&:chomp).join(" ").each_line do |line|
    $question = line.gsub("’", " ")
    $question = line.gsub("?", " ")
    puts $question

  end

  File.open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep2.jpg.txt").map(&:chomp).join(" ").each_line do |line|
    $rep2 = line.gsub("’", " ")
    $rep2 = line.gsub("?", " ")
    puts $rep2
  end

puts "---------------------------------------------------"
end
