# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.length == 0
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  max1 = arr.max
  y = arr.find_index(max1)
  arr.delete_at(y)
  max2 = arr.max
  return max1 + max2
end


def sum_to_n? arr, n
  for i in (0...arr.length())
    for j in (0...arr.length())
      next if i == j
      return true if arr[i].to_i+arr[j].to_i == n
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "<< name
end

def starts_with_consonant? s
  return true if s!='' && !(s[0] =~ /([aeiou])/i) && !(s[0] =~ /\W/ )
  return false
end

def binary_multiple_of_4? s
  return true if s!='' && !(s =~ /((\D+)([2-9]*))/) && (s.to_i)%4 == 0
  return false
end

# Part 3

class BookInStock
attr_accessor :isbn, :price
  def initialize isbn, price
    @isbn = isbn
    @price = price.to_f
    raise ArgumentError, "Invalid ISBN - Empty String", caller if @isbn.length == 0
    raise ArgumentError, "Invalid Price", caller if @price<=0.0
  end
  def price_as_string
    p = (@price.to_s).chars
    x = p.find_index('.')
    y = p[x...p.length]
    z = 3-y.length
    if y.length<3
      z.times do p.push('0') end
    end
    if y.length>3
      g=true if (y[3].to_i)>=5
      a = -z
      a.times do p.pop end
      p[-1] = (p[-1].to_i + 1).to_s if g==true
    end
    return "$#{p.join}"
  end
end
