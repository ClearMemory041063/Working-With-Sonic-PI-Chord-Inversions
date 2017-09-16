# ShowChorde.rb
# 16 sep 2017
#
# Purpose
# Given a that a chord
ch=chord(:C,"major")
puts "chord(:C4,\"major\")",ch
# return (ring 60, 64, 67)
#write a function to print the numbers ans notes such as C B etc

# define the function to change note number to note name
def numto_note(num)
  nm1=["C","Cs","D","Ds","E","F","Fs","G","Gs","A","As","B"]
  nm2=["C","Db","D","Eb","E","F","Gb","G","Af","A","Bb","B"]
  oct=num/12
  n= num-oct*12
  puts "sharps",nm1[n]+(oct-1).to_s,"flats",nm2[n]+(oct-1).to_s
  return nm1[n]+(oct-1).to_s
end
##############
#define a function to iterate the chord ring and play each notes
def chorditerate(ch)
  i=0
  while i<ch.length
    #puts i,ch[i]
    play(numto_note(ch[i]).intern)
    sleep 0.5
    i+=1
  end
  puts "end"
end
##############
#define a function to iterate the chord ring and show notes
def chorditerate1(ch)
  i=0
  while i<ch.length
    #puts i,ch[i]
    numto_note(ch[i]).intern
    sleep 0.25
    i+=1
  end
  puts "end"
end
##############
# test it
puts "The base chord notws"
ch=chord(:D4,"major")
chorditerate1(ch)
chorditerate(ch)
##############
puts "Inversion 0"
ch1=chord_invert(ch,0)
chorditerate1(ch1)
chorditerate(ch1)
##############
puts "Inversion 1"
ch1=chord_invert(ch,1)
chorditerate1(ch1)
chorditerate(ch1)
##############
puts "Inversion 2"
ch1=chord_invert(ch,2)
chorditerate1(ch1)
chorditerate(ch1)
##############
