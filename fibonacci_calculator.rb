module Calculator
    def run(arg1, arg2)
		number = [2]
		number[0] = arg1
		number[1] = arg2
        first_number = number[0].to_i
		second_number = number[1].to_i
        storage = []
        calculate_next = 0
        usage_number_1 = 0
        usage_number_2 = 1
		
        storage[0] = first_number
        storage[1] = second_number

        for i in (0..8)
            usage_number_1 = storage[i].to_i
            usage_number_2 = storage[i+1].to_i
            calculate_next = usage_number_1 + usage_number_2
            storage.push(calculate_next)
        end

        return "The values are: #{storage}"
           
    end
end