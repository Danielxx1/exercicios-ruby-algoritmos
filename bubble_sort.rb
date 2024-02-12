def bubble_sort(arr)
    n = arr.length
  
    # Percorre o array
    (0..n - 1).each do |i|
      # Últimos i elementos já estão no lugar
      (0..n - i - 2).each do |j|
        # Troca se o elemento atual for maior que o próximo
        if arr[j] > arr[j + 1]
          # Troca os elementos
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
        end
      end
    end
  
    return arr
  end
  
  # Teste do algoritmo
  arr = [64, 34, 25, 12, 22, 11, 90]
  sorted_arr = bubble_sort(arr)
  puts "Array ordenado:"
  puts sorted_arr.join(', ')
  