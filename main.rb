require 'gameoflife'
require 'thread'

d = Gameoflife

puts "Gameoflife\n"
puts "Introduce la dimension del tablero (nxn)"
 n = gets.chomp.to_i


d.init(n)
Thread.new do
  loop do
  system('cls')
  d.view
  d.consultar
  sleep 1
  end
end
