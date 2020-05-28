# cli_project

FlatIron CLI Project

Application is using following gems:
    *'pry'
    *'rest-client'
    *'json'
    *'tty-prompt'

To install them run "bundle install" from your terminal if you have bundler installed or install them individually by typing gem get "name_of_gem". To run the program type bin/run from inside of top folder (cli_project by default.)

This project will make two API calls to Breaking Bad API found at "https://www.breakingbadapi.com/api/". One will be to characters and other to quotes. From there it will generate a list of characters and present user with a menu. Users will be given an option to select a character to find out more about it and see a list of quotes related to that character. Menu generation is handled by 'TTY-prompt' gem from the data presented to it in the form of a hash. 

Upon selection additional information about character will be presented to the user.

User will be presented with Y/N option to continue or exit. 