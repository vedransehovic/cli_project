# frozen_string_literal: true

# application environment

require 'bundler/setup'
Bundler.require(:default)


require_relative './app_cli/cli.rb'
require_relative './app_cli/api.rb'
require_relative './app_cli/app_breakingbad.rb'