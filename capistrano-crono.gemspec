# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'capistrano/crono/version'

Gem::Specification.new do |s|
  s.name        = "capistrano-crono"
  s.version     = Capistrano::Crono::VERSION
  s.authors     = ["Dzmitry Plashchynski"]
  s.email       = ["plashchynski@gmail.com"]
  s.homepage    = "https://github.com/plashchynski/capistrano-crono"
  s.description = s.summary = "Crono integration for Capistrano"
  s.license     = "Apache-2.0"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "capistrano-crono"

  s.add_runtime_dependency      "capistrano", ">= 3.0.0"
  s.add_runtime_dependency      "crono"

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
