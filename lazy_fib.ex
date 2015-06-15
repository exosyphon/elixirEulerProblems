defmodule LazyFib do
  def fib2 do
    Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end
end

fib = LazyFib.fib2 |> Enum.take(10)
IO.inspect fib
