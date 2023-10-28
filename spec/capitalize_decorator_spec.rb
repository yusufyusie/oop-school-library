require './spec_helper'

describe CapitalizeDecorator do
  it 'should capitalize the first letter of a Nameable object' do
    class NameableSubclass < Nameable
      def correct_name
        'alice'
      end
    end
    nameable = NameableSubclass.new
    decorator = CapitalizeDecorator.new(nameable)

    expect(decorator.correct_name).to eq('Alice')
  end
end
