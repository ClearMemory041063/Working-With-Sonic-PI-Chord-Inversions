##### Working With Sonic PI Chord Inversions
#### The file ChordsAnd Inversion.rb illustates the basics
When you run this code it will show output in the right hand pane pf the Sonic Pi application
It lists:
The scale names
The chord names, and
The note numbers for an Ae major chord
It plays two scales major and minor and then the three inversions of a chord.

```
puts "An A3major chord is composed of "
puts chord :A3, "M"
play_pattern_timed scale(:d3, :major), 0.125, release: 0.1
play_pattern_timed scale(:d3, :minor), 0.125, release: 0.1
play (chord_invert (chord :A3, "M"), 0)
sleep 0.5
play (chord_invert (chord :A3, "M"), 1)
sleep 0.5
play (chord_invert (chord :A3, "M"), 2)
sleep 0.5
```
#### The program showchords.rb puts the note names of a chord  and plays them

#### The program chordinversion3.rb creates a new function to play a song

```
define :chordinvert do |tonic,name,iseq,timeseq|
  i=0
  while  i<iseq.length
    puts i
    puts tonic,name,timeseq[i],iseq[i]
    puts tonic.intern
    play (chord_invert (chord tonic.intern,name),
          iseq[i])
    sleep timeseq[i]*xx
    i+=1
  end
end
```
tonic and name specify the chord

iseq is an array of integers 0,1,or 2  that specify the inversion number

timeseq is an array of floats that specify the time each iseq inversion of the chord is to play

the arrays iseq and timeseq must contain an equal number of elements.

The program plays a song using the chord inversion sequences.

Listen here:

[Listen]( https://drive.google.com/open?id=0BxMOEsGLzwfeenlPelBaZk44c28 )
