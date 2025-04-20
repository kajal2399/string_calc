class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?

        delimiter = /,|\n/
        if numbers.start_with?("//")
            delimiter_line, numbers = numbers.split("\n", 2)
            custom_delimiter = delimiter_line[2..]
            delimiter = Regexp.new(Regexp.escape(custom_delimiter))
        end

        nums = numbers.split(delimiter).map(&:to_i)
        negatives = nums.select { |n| n < 0 }

        raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

        nums.sum
    end
end  