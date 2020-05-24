class Cli
    def run
        print_welcome
        Api.get_data
        main
    end

    def main
        print_all
        print_selection_prompt
        id = id_validation(prompt_selection)
        get_character_details(id)
    end

    def print_all
        Breakingbad.all.each {|character| puts "#{character.id}.) #{character.name}"}
    end

    def print_welcome
        puts "This is a list of Breaking Bad Characters."
    end

    def print_selection_prompt
        puts "Please select a character's number to get more information."
    end

    def print_error
        puts "Your selection is not valid, please try again. "
    end

    def prompt_selection
        gets.chomp
    end

    def id_validation(id)
        id = id.to_i
        if id < 1 || id > Breakingbad.all.size
            print_error
            sleep 1
            main
        end
        id
    end

    def get_character_details(id)
        character = Breakingbad.all.find {|character| character.id == id}
        system "clear"
        ap "----------------------------------------------------------------"
        ap "NAME: #{character.name}"
        ap "NICKNAME: #{character.nickname}"
        ap "BIRTHDAY: #{character.birthday}"
        ap "ACTOR: #{character.actor}"
        ap "STATUS: #{character.status}"
        ap "OCCUPATION: #{character.occupation}"
        ap "IMAGE: #{character.img}"
        ap "----------------------------------------------------------------"
    end

end