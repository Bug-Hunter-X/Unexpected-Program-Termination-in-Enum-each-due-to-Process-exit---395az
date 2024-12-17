```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    IO.puts("Found 3, skipping remaining elements.")
    throw(:halt) 
  end
  IO.puts(x)
end)
```