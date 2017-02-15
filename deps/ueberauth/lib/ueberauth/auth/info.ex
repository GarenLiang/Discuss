defmodule Ueberauth.Auth.Info do
  @moduledoc """
  Provides a place within the Ueberauth.Auth struct for information about the user.
  """
  alias Ueberauth.Auth.Info

  @type t :: %__MODULE__{
              name: binary | nil,
              first_name: binary | nil,
              last_name: binary | nil,
              nickname: binary | nil,
              email: binary | nil,
              location: binary | nil,
              description: binary | nil,
              phone: binary | nil,
              urls: map
             }

  defstruct name: nil, # The best display name known to the strategy. Usually a concatenation of first and last name, but may also be an arbitrary designator or nickname for some strategies
            first_name: nil,
            last_name: nil,
            nickname: nil, # The username of an authenticating user (such as your @-name from Twitter or GitHub account name)
            email: nil, # The e-mail of the authenticating user. Should be provided if at all possible (but some sites such as Twitter do not provide this information)
            location: nil, # The general location of the user, usually a city and state.
            description: nil, # A short description of the authenticating user.
            image: nil, # A URL representing a profile image of the authenticating user. Where possible, should be specified to a square, roughly 50x50 pixel image.
            phone: nil, #  The telephone number of the authenticating user (no formatting is enforced).
            urls: %{} #  A map containing key value pairs of an identifier for the website and its URL. For instance, an entry could be "Blog" => "http://intridea.com/blog"

  def valid?(%Info{ name: name}) when is_binary(name), do: true
  def valid?(_), do: false
end
