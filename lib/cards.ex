defmodule Cards do

  @spec create_deck :: [<<_::40, _::_*8>>, ...]
  def create_deck() do
    numbers = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
      "Jack", "Queen", "King"]

    suits = ["Spade", "Clover", "Diamond", "Heart"]

    for s <- suits, n <- numbers do
      s <> n
    end
  end
end
