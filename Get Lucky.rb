#Get Lucky by Daft Punk chords con ritmo de Reggaeton Version 01 experimentando

use_bpm 116

live_loop :beat_lead do
  with_fx :flanger, mix: 0.2 do
    with_fx :reverb, mix: 0.1, amp: 0.0 do #amp 0.9
      sample :bd_fat, amp: 2
      sleep 0.75
      sample :bd_fat, amp: 2
      sample :elec_hi_snare, amp: 2
      sleep 0.25
      sample :bd_klub, amp: 1
      sleep 0.5
      sample :bd_klub, amp: 1
      sample :elec_hi_snare, amp: 2
      sleep 0.5
    end
  end
end


live_loop :synths_1, sync: :beat_lead do
  with_fx :vowel, mix: 0.5, amp: 0.5 do #0.5
    with_fx :reverb, room: 0.5, mix: 0.3 do
      use_synth :beep
      play chord(:b3, :minor7), sustain: 4, release: 1
      sleep 4
      play chord(:d4, :major), sustain: 4, release: 1
      sleep 4
      play chord(:fs4, :minor7), sustain: 4, release: 1
      sleep 4
      play chord(:e, :major), sustain: 4, release: 1
      sleep 4
    end
  end
end

live_loop :synths_2, sync: :beat_lead do
  with_fx :autotuner, mix: 0.5, amp: 0.5 do #0.5
    with_fx :reverb, room: 0.2, mix: 0.9 do
      use_synth :tri
      play chord(:b3, :minor7), sustain: 4, release: 1
      sleep 4
      play chord(:d4, :major), sustain: 4, release: 1
      sleep 4
      play chord(:fs4, :minor7), sustain: 4, release: 1
      sleep 4
      play chord(:e, :major), sustain: 4, release: 1
      sleep 4
    end
  end
end

live_loop :synth_lead, sync: :beat_lead do
  with_fx :reverb, mix: 0.7, amp: 0.8 do
    use_synth :sine
    play chord(:b3, :minor, num_octaves: 2).mirror.choose, release: 0.25
    sleep 0.25 #first 4 then 2 then 0.25
  end
end

live_loop :synth_lead_2, sync: :beat_lead do
  with_fx :vowel, vowel_sound: 1, mix: 0.7, amp: 1 do #amp: 0.6
    with_fx :reverb, mix: 0.7 do
      use_synth :chiplead
      use_random_seed 450 #20,40
      16.times do
        play chord(:b3, :minor, num_octaves: 2).mirror.choose, release: 0.5, pitch: 0
        sleep 0.5
      end
    end
  end
end

live_loop :synth_lead_3, sync: :beat_lead do
  with_fx :vowel, vowel_sound: 1, mix: 0.7, amp: 1 do #amp: 0.6
    with_fx :reverb, mix: 0.7 do
      use_synth :prophet
      use_random_seed 40#20,40
      16.times do
        play chord(:b2, :minor, num_octaves: 2).mirror.choose, release: 0.5, pitch: 0
        sleep 0.5
      end
    end
  end
end