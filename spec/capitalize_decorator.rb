require_relative '../capitalize_decorator'

describe CapitalizeDecorator do
  describe '#correct_name' do
    it 'capitalizes the name' do
      person = Person.new(30, 'yesuf', 1)
      decorated_person = CapitalizeDecorator.new(person)
      expect(decorated_person.correct_name).to eq('Yesuf')
    end

    it 'capitalizes the name' do
      person = Person.new(39, 'victor', 2)
      decorated_person = CapitalizeDecorator.new(person)
      expect(decorated_person.correct_name).to eq('Victor')
    end
  end
end
