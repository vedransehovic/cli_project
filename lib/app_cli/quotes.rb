class Quote
    attr_accessor :id, :author, :quote
    @@all = []

    def initialize(id, author, quote)
        @id = id
        @author = author
        @quote = quote
        @@all << self
    end

    def self.all
        @@all
    end
end