# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.PortBinding do
  @moduledoc """
  PortBinding represents a binding between a host IP address and a host port. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"HostIp",
    :"HostPort"
  ]

  @type t :: %__MODULE__{
    :"HostIp" => String.t,
    :"HostPort" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.PortBinding do
  def decode(value, _options) do
    value
  end
end
