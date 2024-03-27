def linear_search(arr, target)
    for i in 0..(arr.length - 1)
      if arr[i] == target
        return i  # Retorna o índice se o elemento for encontrado
      end
    end
    return -1  # Retorna -1 se o elemento não for encontrado
  end
  
  # Exemplo de uso:
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  target_element = 10

  
  result = linear_search(arr, target_element)
  
  if result != -1
    puts "Elemento encontrado no índice #{result}."
  else
    puts "Elemento não encontrado no array."
  end
  