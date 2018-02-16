class Foobar

  def self.baz(a)
    counter = 0
    counter2 = 0

    while counter < a.length
      a[counter] = a[counter].to_i + 2
      a[counter] = a[counter].to_s
      counter = counter + 1

    end

    while counter2 < a.length
      if a[counter2] % 2 != 0
        a.delete(a[counter2])
      end

      if  a[counter2].to_i >= 10
        a.delete(a[counter2])
      end
      counter2 = counter2 + 1
    end

    total = 0
    counter3 = 0
    while counter3 < a.length
      total = total + a[counter3].to_i
      counter3 = counter3 + 1

    end

    return total
  end
end
