# encoding utf-8
require 'coveralls'
require 'simplecov'

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start

require File.expand_path('../../src/calculadora_string', __FILE__)
