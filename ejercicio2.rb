module Formulas
  def perimetro(largo, ancho)
    (2 * largo) + (2 * ancho)
  end

  def area(largo, ancho)
    largo * ancho
  end
end

class Rectangulo
  include Formulas
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def sides
    puts "Los lados miden : Largo #{@largo} - Ancho #{@ancho}"
  end
end

class Cuadrado
  include Formulas
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def sides
    puts "Los lados miden : Largo #{@largo} - Ancho #{@ancho}"
  end
end

cuadrado = Cuadrado.new(4)
rectangulo = Rectangulo.new(6, 4)

puts "El area del cuadrado es : #{cuadrado.area(cuadrado.lado, cuadrado.lado)}, El area del Rectangulos es  #{rectangulo.area(rectangulo.largo, rectangulo.ancho)}"
puts "El Perimetro del cuadrado es : #{cuadrado.perimetro(cuadrado.lado, cuadrado.lado)}, El Perimetro del Rectangulos es  #{rectangulo.perimetro(rectangulo.largo, rectangulo.ancho)}"
