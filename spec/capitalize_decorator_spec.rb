require_relative './spec_helper.rb'

class NameableSubclass < Nameable
  CORRECT_NAME = 'alice'.freeze

  def correct_name
    CORRECT_NAME
  end
end

describe CapitalizeDecorator do
  it 'should capitalize the first letter of a Nameable object' do
    nameable = NameableSubclass.new
    decorator = CapitalizeDecorator.new(nameable)

    expect(decorator.correct_name).to eq('Alice')
  end
end
