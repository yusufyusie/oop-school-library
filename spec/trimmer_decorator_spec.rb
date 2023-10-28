require './spec_helper'
require_relative '../lib/trimmer_decorator'
require_relative '../lib/nameable'

class NameableSubclass < Nameable
  CORRECT_NAME = 'Alice'.freeze

  def correct_name
    CORRECT_NAME
  end
end

describe TrimmerDecorator do
  it 'should decorate a Nameable object and call its correct_name method' do
    nameable = NameableSubclass.new
    decorator = TrimmerDecorator.new(nameable)

    expect(decorator.correct_name).to eq('Alice')
  end
end
