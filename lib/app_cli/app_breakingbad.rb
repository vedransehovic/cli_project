class Character
    puts "Breakingbad class loaded"
    attr_accessor :name, :id, :birthday, :img, :actor, :occupation, :nickname, :status
    @@all = []
    @@choices = {} #this will be used for building a menu

    def initialize (id, name, birthday="unknown", img="unknown", actor="unknown", occupation="unknown", nickname="unknown", status="unknown")
        @id = id
        @name = name
        @birthday = birthday
        @img = img
        @actor = actor
        @occupation = occupation
        @nickname = nickname
        @status = status
        @@choices[name] = id
        @@all << self
    end

    def self.all
        @@all
    end

    def self.choices
        @@choices
    end
end

