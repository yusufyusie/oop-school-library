require './spec_helper'

describe TrimmerDecorator do
  it 'should decorate a Nameable object and call its correct_name method' do
    class NameableSubclass < Nameable
      def correct_name
        'Alice'
      end
    end
    nameable = NameableSubclass.new
    decorator = TrimmerDecorator.new(nameable)

    expect(decorator.correct_name).to eq('Alice')
  end
end
