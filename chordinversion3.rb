# chordinversion3.rb
# 16 Sep 2017
#playing with chord inversions

xx=1.0 # sets tempo

# select the Sonic Pi synthesiser to use as voice
#use_synth :fm
#use_synth :chiplead
#use_synth :hollow #organ
#use_synth :piano
#use_synth :pretty_bell
#use_synth :sine
#use_synth :square
use_synth :tri

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
# inversion order[] and note time intervals[]
up=[0,1,2,1]
uptime=[0.25,0.25,0.25,0.25]
top=[0,1,0]
toptime=[0.25,0.25,0.25]
dwn=[2,1,0]
dwntime=[0.25,0.25,0.25]
#hold doesn't invert the chord
hold0=[0]
hold0time=[0.5]
# name some chords Major minor etc
cnames=["M","M"]


define :newest do||
    #chordinvert |tonic,name,iseq,timeseq|
    i=0
  while i<cnames.length
    chordinvert "E3",cnames[i],up,uptime
    chordinvert "G3", cnames[i],up,uptime
    chordinvert "E3", cnames[i],up,uptime
    chordinvert "C3", cnames[i],up,uptime
    chordinvert "E3", cnames[i],up,uptime
    chordinvert "G3", cnames[i],up,uptime
    chordinvert "A3", cnames[i],top,toptime
    chordinvert "A3", cnames[i],dwn,dwntime
    chordinvert "E3", cnames[i],hold0,hold0time
    sleep 0.5*xx
    i+=1
  end
end

newest
