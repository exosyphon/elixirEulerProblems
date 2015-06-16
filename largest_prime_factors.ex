defmodule LargestPrimeFactors do
  def call(seed) do
   divisible_numbers = Enum.filter(2..seed-1, fn(x) -> rem(seed, x) == 0 and prime?(x) end) 
   List.last(Enum.to_list(divisible_numbers))
  end

  defp prime?(num) do
    Enum.all?(2..num-1, fn(x) -> rem(num, x) != 0 end)
  end
end

IO.puts "test #{LargestPrimeFactors.call(13195)}"
IO.puts "real #{LargestPrimeFactors.call(600_851_475_143)}"
