$LOAD_PATH.unshift(File.expand_path('../', __FILE__))

require 'rspec'
require_relative '../book'
require_relative '../classroom'
require_relative '../decorator'
require_relative '../person'
require_relative '../rental'
require_relative '../student'
require_relative '../teacher'
require_relative '../trimmer_decorator'
require_relative '../nameable'
require_relative '../capitalize_decorator'
require_relative '../app'

RSpec.configure do |config|
  # Configure RSpec options and any other necessary settings
end
