defmodule Tinder do
  def match(me, target) do
    case_match(me, target)
  end

  def case_match(me, target) do
    case {me, target} do
      {:like, :like} -> "Yey, you found a match"
      {:like, :dislike} -> "Please give up"
      {:dislike, _} -> "Passed"
      _ -> nil
    end
  end

  def fn_match(:like, :like), do: "Yey, you found a match"
  def fn_match(:like, :dislike), do: "Please give up"
  def fn_match(:dislike, _), do: "Passed"
  def fn_match(_, _), do: nil
end
