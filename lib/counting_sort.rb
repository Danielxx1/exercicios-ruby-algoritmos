def counting_sort(arr)
    # Encontrar o valor máximo no array
    max_value = arr.max
  
    # Inicializar um array para contar a frequência dos elementos
    count = Array.new(max_value + 1, 0)
  
    # Contar a frequência dos elementos no array
    arr.each { |element| count[element] += 1 }
  
    # Reconstruir o array ordenado
    sorted_arr = []
    count.each_with_index do |freq, value|
      freq.times { sorted_arr << value } if freq > 0
    end
  
    return sorted_arr
  end
  
  # Exemplo de uso:
  arr = [4, 2, 3, 1, 4, 6, 3]
  sorted_arr = counting_sort(arr)
  puts "Array ordenado:"
  puts sorted_arr.join(', ')
  