defmodule Cards do

  def create_deck() do
    numbers = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
      "Jack", "Queen", "King"]

    suits = ["Spade", "Clover", "Diamond", "Heart"]

    IO.inspect("==========CreateDeck==========")

    deck = for suit <- suits, num <- numbers do
      IO.inspect("#{suit}#{num}")
    end

    shuffle(deck)
  end

  defp shuffle(deck) do
    IO.inspect("==========Shuffle==========")

    for shffled_deck <- Enum.shuffle(deck) do
      IO.inspect(shffled_deck)
    end

    contains?(deck, "SpadeAce")
  end

  defp contains?(deck, str) do
    IO.inspect("==========Contains==========")
    Enum.member?(deck, str)
  end

end
