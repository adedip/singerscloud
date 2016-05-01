class Singer < ActiveRecord::Base

  def words_count
    words = self.lyrics.gsub(/\,|\.+|\!|\?|\"/, '').split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 if word.length > 3}
    word_list = []
    frequency.each do |key, value| 
      obj = {text: key, weight: value}
      word_list << obj if value > 1
    end
    return word_list
  end

  def self.search(term)
    where('LOWER(name) LIKE :term', term: "%#{term.downcase}%")
  end

end
