class String
  define_method(:coin_counter) do
    pocket_value = self.to_f()*100.to_i()
    puts pocket_value
    output = []
    coin_values = {'quarter' => 25, 'dime' => 10, 'nickel' => 05, 'pennie' => 01}
    counter = {'quarter' => 0, 'dime' => 0, 'nickel' => 0, 'pennie' => 0}

    coin_values.values().each() do |value|
      until pocket_value < (value)
        pocket_value -= value
        counter[coin_values.key(value)] +=1
      end
    end

    counter.values.each() do |value|
      if value > 1
        output.push(value.to_s() + " " + counter.key(value) + "s")
      elsif value > 0
        output.push(value.to_s() + " " + counter.key(value))
      end
    end
    puts pocket_value
    output.join(" ")
  end
end
