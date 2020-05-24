class Cli
    def run
        welcome
        Api.get_data
        main
    end

    def main
        print_all
        print_selection_prompt
        id = id_validation(prompt_selection)
        
    end

    def print_all
        Breakingbad.all.each {|character| puts "#{character.id}.) #{character.name}"}
    end

    def welcome
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


end