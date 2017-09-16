# ChordsAndInversion.rb
# 16 sep 2017


#scale_names
snames= scale_names
puts "Scale Names"
i=0
while i<snames.length-1
  puts snames[i]
  i+=1
end

chdnames= chord_names
puts "Chord names"
i=0
while i<chdnames.length-1
  puts chdnames[i]
  i+=1
end

play_pattern_timed scale(:d3, :major), 0.125, release: 0.1
play_pattern_timed scale(:d3, :minor), 0.125, release: 0.1


play (chord_invert (chord :A3, "M"), 0)
sleep 0.5
play (chord_invert (chord :A3, "M"), 1)
sleep 0.5
play (chord_invert (chord :A3, "M"), 2)
sleep 0.5
