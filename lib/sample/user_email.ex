defmodule Sample.UserEmail do
  import Swoosh.Email

  def welcome(user) do
    new()
    |> from("testsandbox@seznam.cz")
    |> to("testsandbox@seznam.cz")
    |> subject("Hello, Wally!")
    |> text_body("Hello")
    |> put_provider_option(:id, 1)
    |> put_provider_option(:template_id, 1)
  end
end
