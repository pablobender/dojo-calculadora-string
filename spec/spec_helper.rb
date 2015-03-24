# encoding utf-8
require 'coveralls'
require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start
Coveralls.wear!

require File.expand_path('../../src/calculadora_string', __FILE__)
