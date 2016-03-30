defmodule BitfinexTest do
  use ExUnit.Case
  doctest Bitfinex

  test "returns order book" do
    {:ok, book} = Bitfinex.Public.order_book("BTC","USD")
    assert is_list(book["asks"]) and is_list(book["bids"])
  end
end
