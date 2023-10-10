# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Driver do
  @moduledoc """
  Driver represents a driver (network, logging, secrets).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Options"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t,
    :"Options" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Driver do
  def decode(value, _options) do
    value
  end
end

