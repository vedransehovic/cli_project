class Breakingbad
    puts "Breakingbad class loaded"
    attr_accessor :name, :id, :birthday, :img, :actor, :occupation, :nickname, :status
    @@all = []

    def initialize (id, name, birthday="unknown", img="unknown", actor="unknown", occupation="unknown", nickname="unknown", status="unknown")
        @id = id
        @name = name
        @birthday = birthday
        @img = img
        @actor = actor
        @occupation = occupation
        @nickname = nickname
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end
end

