class Fixnum
  define_method(:coin_counter) do
    pocket_value = self
    puts pocket_value

    output = []
    coin_values = {'quarter' => 25, 'dime' => 10, 'nickel' => 5, 'pennie' => 1}
    counter = {'quarter' => 0, 'dime' => 0, 'nickel' => 0, 'pennie' => 0}
    change_tray = { 'quarter' => 2, 'dime' => 1, 'nickel' => 99, 'pennie' => 100}
    counter.keys.each() do |key|
      out_of_coin = false
      until pocket_value < coin_values[key] or out_of_coin == true
        if change_tray[key] == 0
          out_of_coin = true
        else
          pocket_value -= coin_values[key]
          counter[key] +=1
          change_tray[key] -=1
        end
      end
    end


    counter.keys.each() do |counterkey|
      if counter[counterkey] > 1
        output.push(counter[counterkey].to_s() + " " + counterkey + "s")
      elsif counter[counterkey] == 1
        output.push(counter[counterkey].to_s() + " " + counterkey)
      end
    end
    output.join(" ")
  end
end
