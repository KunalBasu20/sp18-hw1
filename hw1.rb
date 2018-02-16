def squared_sum(a, b)
  total = a + b
  return total * total
end


def sort_array_plus_one(a)
  arr = Array.new
  counter = 0
  counter2 = 0

  min = a[counter]
  while counter < a.length

    while counter2 < a.length
      if a[counter2] < min
        min = a[counter2]
        a[counter], a[counter2] = a[counter2], a[counter]
      end
      counter2 = counter2 + 1
    end

    counter = counter + 1
    counter2 = counter
    min = a[counter]
  end

  i = 0
  while i < a.length
    a[i] = a[i] + 1
    i = i + 1
  end

  return a

end

def combine_name(first_name, last_name)
  return first_name + " " + last_name
end

def blockin_time(a)
  # DO NOT EDIT THIS CODE BELOW
  require './foobar'
  Foobar.baz a
end

def scrabble(word)
  values = {
    a: 1,
    b: 3,
    c: 3,
    d: 2,
    e: 1,
    f: 4,
    g: 2,
    h: 4,
    i: 1,
    j: 8,
    k: 5,
    l: 1,
    m: 3,
    n: 1,
    o: 1,
    p: 3,
    q: 10,
    r: 1,
    s: 1,
    t: 1,
    u: 1,
    v: 4,
    w: 4,
    x: 8,
    y: 4,
    z: 10,
  }
  word.split(//).map! {|n| values[n.intern]}.reduce(:+)
end
