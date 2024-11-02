# frozen_string_literal: true

require './../cipher'

describe Cipher do
  describe '#set_string' do
    subject(:user_values) { described_class.new }
    context 'when a new class is created' do
      before do
        quote = 'Hello!'
        allow(user_values).to receive(:puts)
        allow(user_values).to receive(:gets).and_return(quote)
      end
      it 'prints out a prompt for the user' do
        expect(user_values).to receive(:puts).with('Message: ').once
        user_values.set_string
      end

      it 'gets the value from the user' do
        expect(user_values).to receive(:gets).once
        user_values.set_string
      end

      it 'sets the quote instance variable equal to the value from user' do
        quote = 'Hello!'
        expect { user_values.set_string }.to change { user_values.instance_variable_get(:@quote) }.to(quote)
      end
    end
  end
end
