# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Address do
  @moduledoc """
  Address represents an IPv4 or IPv6 IP address.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Addr",
    :"PrefixLen"
  ]

  @type t :: %__MODULE__{
    :"Addr" => String.t,
    :"PrefixLen" => integer()
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Address do
  def decode(value, _options) do
    value
  end
end

