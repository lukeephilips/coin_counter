class String
  define_method(:coin_counter) do
    pocket_value = self.to_f()*100.to_i()
    output = []
    coin_values = {'quarter' => 25, 'dime' => 10, 'nickel' => 05, 'pennie' => 01}
    counter = {'quarter' => 0, 'dime' => 0, 'nickel' => 0, 'pennie' => 0}
    change_tray = { 'quarter' => 2, 'dime' => 1, 'nickel' => 10, 'pennie' => 100}

    change_tray.keys.each() do |tray_key|
      out_of_coin = false
      until pocket_value < coin_values[tray_key] or out_of_coin == true
        if change_tray[tray_key] == 0
          out_of_coin = true
        else
          pocket_value -= coin_values[tray_key]
          counter[tray_key] +=1
          change_tray[tray_key] -=1
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
