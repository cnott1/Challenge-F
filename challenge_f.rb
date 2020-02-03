
banger = "C:/Users/charles_nott/Desktop/Challenge-F/this_is_a_banger.wav"
x = 1
sampleDur = (sample_duration banger)

#go down to 0.6 rate
4.times do
  with_fx :reverb do
    sample banger, rate: x
  end
  x = x-0.1
  sleep sampleDur / x
end
# go up to 1.5 rate
10.times do
  with_fx :reverb do
    sample banger, rate: x
  end
  x = x+0.1
  sleep sampleDur / x
end