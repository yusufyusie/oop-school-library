require './spec_helper'

describe Decorator do
  it 'should decorate a Nameable object and call its correct_name method' do
    class NameableSubclass < Nameable
      def correct_name
        'Alice'
      end
    end
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
