# cli_project

FlatIron CLI Project

Application is using following gems:
    *'pry'
    *'rest-client'
    *'json'
    *'tty-prompt'

To install them run "bundle install" from your terminal if you have bundler installed or install them individually by typing gem get "name_of_gem".

This project will make an API call to Breaking Bad Characters API at "https://www.breakingbadapi.com/api/characters" and pull the list of characters. From that lsit users will be presented with a choice to select a character. That menu generation and validation will be handled by TTY-prompt gem. 

Upon selection additional information about character will be presented to the user.

User will be presented with Y/N option to continue or exit. 