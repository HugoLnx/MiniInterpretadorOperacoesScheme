lib_dir = File.join File.dirname(__FILE__), 'lib'
require File.join lib_dir, 'mini_interpretador_scheme.rb'
loop do
  lista_str = gets.chomp!
	break if lista_str == 'exit'
	lista = Lista.new lista_str
	puts " => #{lista.resolver}"
end
