
  def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
  end

   # definir metodo: promedios alumnos 

 def promedio_alumnos
    array = read_alum('alumnos.csv')
    array.each_with_index do |elemento, index|
        suma = 0
        acc = 0
        elemento.each_with_index do |ele, index|
            if index != 0
                suma += ele.to_f
                acc += 1
            end
        end
        puts "Alumno: #{elemento[0]} --promedio : #{suma.to_f/acc} " 
    end
end

# definir metodo:  alumnos inasistentes 

def inasistencia_alumnos
    array = read_alum('alumnos.csv')
    array.each_with_index do |elemento,index|
        acc = 0
        elemento.each_with_index do |ele|
            if ele == 'A'
                acc += 1
            end
        end
        puts "Alumno: #{elemento[0]} --inasistencias : #{acc} " 
    end
end

#   definir metodo : alumnos aprobados


def alumnos_aprobados
    array = read_alum('alumnos.csv')
    array.each_with_index do |elemento, index|
        suma = 0
        acc = 0
        elemento.each_with_index do |ele, index|
            if index = index != 0
                suma += ele.to_f
                acc += 1
            end
        end
        puts "Alumno: #{elemento[0]} --aprobado? : #{suma.to_f/acc >= 5} " 
    end
end

 
    




condition = 0
while condition != 4
  puts "----Ingrese Opción----"
  puts '1) Mostrar Promedios Alumnos'
  puts '2) Mostrar Inasistencias Alumnos'
  puts '3) Mostrar Alumnos Aprobados'
  puts '4) Salir del menú'


  condition = gets.chomp.to_i
  case condition
  when 1
    promedio_alumnos
  when 2
    inasistencia_alumnos
  when 3
    alumnos_aprobados
  when 4
    puts '----Programa Terminado----' 
  else
    puts '----Opción No Válida----'
    puts '----Ingrese Opción Valida----'
  end
end