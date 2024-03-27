def binary_search(arr, target)
    low = 0
    high = arr.length - 1
  
    while low <= high
      mid = (low + high) / 2
      guess = arr[mid]
  
      if guess == target
        return mid  # Elemento encontrado, retorna o índice
      elsif guess > target
        high = mid - 1  # O alvo está à esquerda, ajusta o índice alto
      else
        low = mid + 1   # O alvo está à direita, ajusta o índice baixo
      end
    end
  
    return -1  # Elemento não encontrado, retorna -1
  end
  
  # Exemplo de uso:
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  target_element = 4
  
  result = binary_search(arr, target_element)
  
  if result != -1
    puts "Elemento encontrado no índice #{result}."
  else
    puts "Elemento não encontrado no array."
  end
  