class TextAnalyzer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        words = @text.split(" ")
        words.count
    end

    def count_of_vowels
        @text.scan(/[aeoui]/).count
    end

    def count_of_consonants
        @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        s1 = @text.gsub(/[^a-z]/, '')
        arr = s1.split('')
        arr2 = arr.uniq
        hash = {}

        arr2.map do |c|
            hash[c] = arr.count(c)
        end

        biggest = {hash.keys.first => hash.values.first}

        hash.each do |key, value|
            if value > biggest.values.first
                biggest = {}
                biggest[key] = value
            end
        end
        biggest
    end
end