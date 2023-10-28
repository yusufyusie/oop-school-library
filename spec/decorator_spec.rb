require './spec_helper'
require_relative '../lib/decorator'
require_relative '../lib/nameable'

class NameableSubclass < Nameable
  def correct_name
    'Alice'
  end
end

describe Decorator do
  it 'should decorate a Nameable object and call its correct_name method' do
    nameable = NameableSubclass.new
    decorator = Decorator.new(nameable)

    expect(decorator.correct_name).to eq('Alice')
  end

  it 'should raise an error if the correct_name method is not implemented' do
    nameable = Nameable.new
    decorator = Decorator.new(nameable)

    expect { decorator.correct_name }.to raise_error(NotImplementedError)
  end
end
