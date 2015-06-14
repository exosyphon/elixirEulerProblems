defmodule Multiples do
  def call do
    IO.puts Enum.reduce(0..999, 0, &add/2)
  end

  def add(x, sum) when (rem(x, 3) == 0 or rem(x, 5) == 0) do
    x+sum
  end

  def add(_, sum) do
    sum
  end
end

Multiples.call

