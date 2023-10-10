# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.AuthConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :username,
    :password,
    :email,
    :serveraddress
  ]

  @type t :: %__MODULE__{
          :username => String.t(),
          :password => String.t(),
          :email => String.t(),
          :serveraddress => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.AuthConfig do
  def decode(value, _options) do
    value
  end
end
