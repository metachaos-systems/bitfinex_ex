defmodule Bitfinex.Public do
  use HTTPoison.Base

  def order_book(first, second) do
    {:ok, response} = get("/book/" <> first <> second)
    response.body
    |> Poison.Parser.parse!
  end

  def process_url(url) do
    "https://api.bitfinex.com/v1" <> url
  end
end
