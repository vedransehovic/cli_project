# frozen_string_literal: true

# application environment

require 'bundler'  #talk to michael about this
Bundler.require
require "open-uri"
require "net/http"

require_relative './app_cli/cli.rb'
require_relative './app_cli/api.rb'
require_relative './app_cli/app_breakingbad.rb'