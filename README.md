# Elixir Unexpected Program Termination in Enum.each

This example demonstrates an uncommon error in Elixir where using `Process.exit()` within an `Enum.each` loop can lead to unexpected program termination.  The issue stems from how `Process.exit()` immediately terminates the current process, which in this case disrupts the `Enum.each` iteration before it completes.

## How to Reproduce

1. Run the `bug.ex` file.
2. Observe the output and the program's premature termination.

## Solution

The solution involves replacing `Process.exit()` with a more appropriate approach. Instead of abruptly terminating the process, handle the condition gracefully. The `bugSolution.ex` file shows this alternative implementation.