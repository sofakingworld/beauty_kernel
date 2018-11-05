defmodule BeatyKernel do
  @doc "alias to Kernel  !=/2 function"
  defdelegate not_eq?(left, right), to: Kernel, as: :!=

  @doc "alias to Kernel !==/2 function"
  defdelegate not_strong_equal?(left, right), to: Kernel, as: :!==

  @doc "alias to Kernel  &&/2 function"
  defdelegate name?(left, right), to: Kernel, as: :&&

  @doc "alias to Kernel */2 function"
  defdelegate multiply(left, right), to: Kernel, as: :*

  @doc "alias to Kernel  ++/2 function"
  defdelegate list_concat(left, right), to: Kernel, as: :++

  @doc "alias to Kernel  +/1 function"
  defdelegate plus(value), to: Kernel, as: :+

  @doc "alias to Kernel  +/2 function"
  defdelegate plus(left, right), to: Kernel, as: :+

  @doc "alias to Kernel  --/2 function"
  defdelegate list_remove(left, right), to: Kernel, as: :--

  @doc "alias to Kernel  -/1 function"
  defdelegate minus(value), to: Kernel, as: :-

  @doc "alias to Kernel  -/2 function"
  defdelegate minus(left, right), to: Kernel, as: :-

  @doc "alias to Kernel  //2 function"
  defdelegate devide(left, right), to: Kernel, as: :/

  @doc "alias to Kernel  </2 function"
  defdelegate lt?(left, right), to: Kernel, as: :<

  @doc "alias to Kernel  <=/2 function"
  defdelegate lteq?(left, right), to: Kernel, as: :<=

  @doc "alias to Kernel  <>/2 function"
  defdelegate concat(left, right), to: Kernel, as: :<>

  @doc "alias to Kernel ==/2 function"
  defdelegate eq?(left, right), to: Kernel, as: :==

  @doc "alias to Kernel  =~/2 function"
  defdelegate match?(left, right), to: Kernel, as: :=~

  @doc "alias to Kernel >/2 function"
  defdelegate gt?(left, right), to: Kernel, as: :>

  @doc "alias to Kernel  >=/2 function"
  defdelegate gteq?(left, right), to: Kernel, as: :>=
end
