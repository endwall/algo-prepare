## permutation of a list

class Permutation
  def initialize(arr)
    @str_array = arr
  end

  def perm
    while true
      output
      # find the first candidate a[i] < a[i] + 1
      i = @str_array.size - 2
      return if i < 0

      i = i - 1 while @str_array[i] >= @str_array[i+1]

      return if i < 0
      # find the min from i to right end
      k = i + 1
      found = k
      while k < @str_array.size
        found = k if @str_array[i] < @str_array[k] && @str_array[found] > @str_array[k]
        k = k + 1
      end
      # swap i and k
      swap(i, found) if i != found

      # reverse the right from i + 1 to the right end
      reverse(i+1, @str_array.size - 1)
    end
  end

  def output
    puts @str_array.join(':')
  end

  def swap(i, j)
    tmp = @str_array[i]
    @str_array[i] = @str_array[j]
    @str_array[j] = tmp
  end

  def reverse(i, j)
    while i < i
      swap(i, j)
      i = i + 1
      j = j - 1
    end
  end

end

Permutation.new(('a'..'c').to_a).perm