require 'spec_helper'
describe 'Uma Lista' do  
  describe 'Ao ser instanciada' do
    before :all do
      @lista = Lista.new '(+)'
	  end
  
		it 'deveria ter sinal' do
		  @lista.sinal.should be_eql '+'
		end
  end

	describe 'Ao ser instanciada com numeros inteiros' do
	  before :all do
      @lista = Lista.new '(sinal 10 20)'
		end

		it 'deveria ter numeros inteiros' do
		  @lista.numeros.should be_all{|numero| numero.is_a? Fixnum}
		end
	end
				
	describe 'Ao ser instanciada com numeros reais' do
	  before :all do
      @lista = Lista.new '(sinal 10.0 20.0)'
		end

		it 'deveria ter numeros reais' do
		  @lista.numeros.should be_all{|numero| numero.is_a? Float}
		end
	end

	describe 'Ao ser instanciada como lista de soma' do
	  before :all do
		  @lista = Lista.new '(+ 10 20 30)'
		end

		it 'deveria resolver a lista' do
		  @lista.resolver.should be_eql 60
		end
	end

	describe 'Ao ser instanciada como lista de subtracao' do
	  before :all do
		  @lista = Lista.new '(- 50 10 20)'
		end

		it 'deveria resolver a lista' do
		  @lista.resolver.should be_eql 20
		end
	end

	describe 'Ao ser instanciada como lista de mutiplicacao' do
	  before :all do
		  @lista = Lista.new '(* 2 5 9)'
		end

		it 'deveria resolver a lista' do
		  @lista.resolver.should be_eql 90
		end
	end

	describe 'Ao ser instanciada como lista de divisao' do
	  before :all do
		  @lista = Lista.new '(/ 30 3 2)'
		end

		it 'deveria resolver a lista' do
		  @lista.resolver.should be_eql 5 
		end
	end

	describe 'Ao ser instanciada com numeros e listas' do
    before :all do
		  @lista = Lista.new '(+ 10 (* 5 10))'
    end

		it 'deveria resolver a lista interna primeiro, e depois a externa' do
		  @lista.resolver.should be_eql 60
		end
	end
end
