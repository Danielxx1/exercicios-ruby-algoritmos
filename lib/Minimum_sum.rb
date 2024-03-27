def minimum_sum(arr)
    # Ordena o array em ordem crescente
    arr.sort!
  
    # Inicializa a soma mínima
    min_sum = 0
  
    # Percorre o array em passos de 2, escolhendo pares consecutivos
    (0...arr.length).step(2) do |i|
      min_sum += arr[i]
    end
  
    # Retorna a soma mínima
    min_sum
  end
  
  # Exemplo de uso
  array_exemplo = [4, 3, 1, 7, 2, 8]
  resultado = minimum_sum(array_exemplo)
  puts resultado
  