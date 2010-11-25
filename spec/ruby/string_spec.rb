require 'spec_helper'

describe 'Uma String' do
  it 'deveria ser convertida para float quando tiver ponto' do
	  '10.3'.to_number.should be_a Float
  end

	it 'deveria ser convertica para fixnum quando nao tiver ponto' do
	  '10'.to_number.should be_a Fixnum
	end
end
