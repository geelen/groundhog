# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "groundhog"
  s.version     = groundhog::VERSION
  s.author      = "Glen Maddern"
  s.email       = "glenmaddern@gmail.com"
  s.summary     = "Keep repeating the same day, er transaction."
  s.description = "groundhog gives you a repeatable transaction loop for your console."
  s.homepage    = "http://github.com/geelen/groundhog"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "groundhog"

  s.files        = %w(groundhog.rb LICENSE README.md)

  s.add_dependency 'pry'
  s.add_dependency 'rails'
end
