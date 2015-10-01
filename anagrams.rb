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
anagrams.each {
  |word, word2| if word.chars.last == word2.chars.first
    cosmics.push(word.chomp(self.chars.last)+word2)
  end
}
print cosmics
