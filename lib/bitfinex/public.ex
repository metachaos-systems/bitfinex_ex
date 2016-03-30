defmodule Bitfinex.Public do
  use HTTPoison.Base

  def order_book(first, second) do
    with  {:ok, response} <- get("/book/" <> first <> second),
          {:ok, data} <-  Poison.Parser.parse(response.body),
    do: {:ok, data} 
  end

  def process_url(url) do
    "https://api.bitfinex.com/v1" <> url
  end
end
