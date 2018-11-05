# BeatyKernel

[Package on Hex.pm](https://hex.pm/packages/beaty_kernel/0.1.0)

The BeatyKernel package does implement aliases for some Kernel functions.

It is usefull in pipelines, if you're tired of ugly Kernel calls, like shown below:

```elixir
def foo() do
  list_of_data
  |> elvis_function()
  |> Kernel.++(additional_data)
end
```

```elixir
import BeatyKernel, only: :functions

def foo() do
  list_of_data
  |> elvis_function()
  |> list_concat(additional_data)
end
```

## Existing Aliases

table legend:

`?*` - awaiting for naming proposal


Kernel | BeatyKernel's alias
-------| -------------------
!/1    | `?* `
!=/2   | not_eq? 
!==/2  | `?* `
&&/2   | `?*   `
*/2    | multiply 
++/2   | list_concat
+/1    | plus 
+/2    | plus 
--/2   | list_remove   
-/1    | minus
-/2    | minus
../2   | `?*`
/2     | devide 
</2    | lt?
<=/2   | lteq?   
<>/2   | concat
==/2   | eq?
===/2  | `?*`
=~/2   | match?
>/2    | gt?
>=/2   | gteq?
-------| -------------------

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `beaty_kernel` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:beaty_kernel, "~> 0.1.0"}
  ]
end
```
