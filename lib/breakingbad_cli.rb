# frozen_string_literal: true

# application environment

require 'bundler'  #talk to michael about this. WHy this works and not "bundler/setup" like he had. "bundler/setup" works on a mac.
Bundler.require
require "tty-prompt"


require_relative './app_cli/app_breakingbad.rb'
require_relative './app_cli/api.rb'
require_relative './app_cli/cli.rb'

