# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ServiceEndpointVirtualIps do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"NetworkID",
    :"Addr"
  ]

  @type t :: %__MODULE__{
    :"NetworkID" => String.t,
    :"Addr" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ServiceEndpointVirtualIps do
  def decode(value, _options) do
    value
  end
end

