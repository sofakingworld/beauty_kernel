# BeautyKernel

[Package on Hex.pm](https://hex.pm/packages/beauty_kernel/0.1.0)

The BeautyKernel package does implement aliases for some Kernel functions.

It is usefull in pipelines, if you're tired of ugly Kernel calls, like shown below:

```elixir
defmodule Foo do
  def bar() do
    list_of_data
    |> elvis_function()
    |> Kernel.++(additional_data)
  end
end
```

```elixir
defmodule Foo do
  import BeautyKernel, only: :functions

  def bar() do
    list_of_data
    |> elvis_function()
    |> list_concat(additional_data)
  end
end
```

## Existing Aliases

table legend:

`?*` - awaiting for naming proposal


Kernel | BeautyKernel's alias
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
\>/2    | gt?
\>=/2   | gteq?


## Installation

The package can be installed
by adding `beauty_kernel` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:beauty_kernel, "~> 0.1.0"}
  ]
end
```
