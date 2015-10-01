words = File.read("words.txt").split("\n")
word_hash = Hash[words.map {|w| [w, w.chars.sort.join]}]
instances = word_hash.group_by {|key, value| word_hash[key]}
instances = instances.each_pair do |key, value|
  instances [key] = value.transpose.delete_at(0)
end
anagrams = []
 instances.values.map {
  |v| if v.size > 1
  anagrams.push v
end
}
puts "there are #{anagrams.count} anagrams."
cosmics = []
 anagrams.each do |fst, snd|
     if fst[-1] == snd[0]
       cosmics.push [fst,snd]
     end
 end
puts "There are #{cosmics.count} pairs that work."
