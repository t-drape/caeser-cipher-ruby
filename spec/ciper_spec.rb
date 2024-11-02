# frozen_string_literal: true

require './cipher'

describe '#ciper' do # rubocop:disable Metrics/BlockLength
  it 'keeps case and shifts letters' do
    string = 'hEllo'
    num = 1
    expected_output = 'iFmmp'
    expect(cipher(string, num)).to eql(expected_output)
  end

  it 'shifts around to start' do
    string = 'xelloz'
    num = 3
    expected_output = 'ahoorc'
    expect(cipher(string, num)).to eql(expected_output)
  end

  it 'keeps the punctuation marks the same' do
    string = 'hel?loz!'
    num = 1
    expected_output = 'ifm?mpa!'
    expect(cipher(string, num)).to eql(expected_output)
  end

  it 'keeps the spaces in a string' do
    string = 'H E ll o! ! !'
    num = 1
    expected_output = 'I F mm p! ! !'
    expect(cipher(string, num)).to eql(expected_output)
  end

  it 'works with numbers as well' do
    string = 'The maximum value is 100'
    num = 2
    expected_output = 'Vjg oczkowo xcnwg ku 100'
    expect(cipher(string, num)).to eql(expected_output)
  end

  it 'works with zero' do
    string = 'HellOZ!'
    num = 0
    expected_output = 'HellOZ!'
    expect(cipher(string, num)).to eql(expected_output)
  end
end

# Tried to make it a class! That was a bad idea :)
# # describe Cipher do
#   subject(:user_values) { described_class.new }

#   describe '#set_string' do
#     context 'when user initiates gameplay string' do
#       before do
#         quote = 'Hello!'
#         allow(user_values).to receive(:puts)
#         allow(user_values).to receive(:gets).and_return(quote)
#       end
#       it 'prints out a prompt for the user' do
#         expect(user_values).to receive(:puts).with('Message: ').once
#         user_values.set_string
#       end

#       it 'gets the value from the user' do
#         expect(user_values).to receive(:gets).once
#         user_values.set_string
#       end

#       it 'sets the quote instance variable equal to the value from user' do
#         quote = 'Hello!'
#         expect { user_values.set_string }.to change { user_values.instance_variable_get(:@quote) }.to(quote)
#       end
#     end
#   end

#   describe 'set_num' do
#     context 'when user specifies shift number' do
#       before do
#         allow(user_values).to receive(:puts)
#         allow(user_values).to receive(:gets).and_return('3')
#       end

#       it 'prints out a prompt for the user' do
#         expect(user_values).to receive(:puts).with('Number: ').once
#         user_values.set_num
#       end

#       it 'accepts user input' do
#         expect(user_values).to receive(:gets).and_return('3').once
#         user_values.set_num
#       end

#       it 'changes string number to integer' do
#         expect(user_values.set_num).to eql(3)
#       end

#       it 'updates the instance variable num' do
#         expect { user_values.set_num }.to change { user_values.instance_variable_get(:@num) }.to(3)
#       end
#     end
#   end
# end
