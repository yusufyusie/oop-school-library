require_relative './spec_helper.rb'

describe 'Test Decorator classes' do
  before(:context) do
    @person = Person.new(30, 'yesuf023@gmail', 1)
    @decorator = Decorator.new(@person)
    @capitalize_decorator = CapitalizeDecorator.new(@person)
    @trimmer_decorator = TrimmerDecorator.new(@person)
  end

  context 'Testing Decorator classes and methods' do
    it 'test_correct_name' do
      expect(@decorator.correct_name).to eq('yesuf023@gmail')
      expect(@capitalize_decorator.correct_name).to eq('yesuf023@gmail')
      expect(@trimmer_decorator.correct_name).to eq('yesuf023@gm')
    end

    it 'test_capitalize_decorator' do
      expect(@capitalize_decorator.nameable.name).to eq('yesuf023@gmail')
      expect(@capitalize_decorator.correct_name).to eq('yesuf023@gmail')
    end

    it 'test trimmer_decorator' do
      expect(@trimmer_decorator.nameable.name).to eq('yesuf023@gmail')
      expect(@trimmer_decorator.correct_name).to eq('yesuf023@gm')
    end
  end
end
