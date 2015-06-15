defmodule EvenFib do
  def call do
    even_fibs = Enum.map(1..32, &even_fib_numbers/1)
    Enum.reduce(even_fibs, 0, fn(num, sum) -> sum+num end)
  end

  defp even_fib_numbers(num) do
    result = fib(num)
    if rem(result,2) == 0, do: result, else: 0
  end

  defp fib(1), do: 1
  defp fib(0), do: 1

  defp fib(num) do
    fib(num-1) + fib(num-2)
  end
end

IO.puts EvenFib.call
