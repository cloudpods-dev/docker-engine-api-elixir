# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.SystemInfoDefaultAddressPools do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Base",
    :"Size"
  ]

  @type t :: %__MODULE__{
    :"Base" => String.t,
    :"Size" => integer()
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.SystemInfoDefaultAddressPools do
  def decode(value, _options) do
    value
  end
end

