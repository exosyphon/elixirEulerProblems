defmodule LargestPrimeFactors do
  defp prime?(num) do
    Enum.all?(2..num-1, fn(x) -> rem(num, x) != 0 end)
  end

  defp prime_factors(number, div \\ 2, factors \\ []) do
    cond do
      prime?(number) ->
        [number | factors]
      rem(number, div) == 0 ->
        prime_factors(div(number, div), 2, [div | factors])
      true ->
        prime_factors(number, div + 1, factors)
    end
  end

  def largest_prime(n), do: prime_factors(n) |> List.first
end

IO.puts "test #{LargestPrimeFactors.largest_prime(13195)}"
IO.puts "real #{LargestPrimeFactors.largest_prime(600_851_475_143)}"
