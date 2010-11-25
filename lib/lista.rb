class Lista
	attr_reader :numeros
	attr_reader :sinal

  def initialize(lista_str)
    lista_str.gsub!(/\((.*)\)/){$1}
    lista_str.gsub!(/(\([0-9 \+\-\/\*]+\))/){Lista.new($1).resolver}
    elementos =  lista_str.split ' '
    elementos.delete_if{|elemento| elemento.empty?}
    @sinal = elementos.delete_at 0
    numeros = elementos.collect{|elemento| elemento.to_number}
	end
	
	def resolver
		@numeros.inject{|resultado,numero| resultado.method(sinal).call(numero) }
	end 
end
