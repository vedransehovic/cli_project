# frozen_string_literal: true

# application environment

require 'bundler' 
Bundler.require
require "tty-prompt"


require_relative './app_cli/app_breakingbad.rb'
require_relative './app_cli/api.rb'
require_relative './app_cli/cli.rb'
require_relative './app_cli/quotes.rb'

