# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.EndpointSettings do
  @moduledoc """
  Configuration for a network endpoint.
  """

  @derive [Poison.Encoder]
  defstruct [
    :IPAMConfig,
    :Links,
    :Aliases,
    :NetworkID,
    :EndpointID,
    :Gateway,
    :IPAddress,
    :IPPrefixLen,
    :IPv6Gateway,
    :GlobalIPv6Address,
    :GlobalIPv6PrefixLen,
    :MacAddress,
    :DriverOpts
  ]

  @type t :: %__MODULE__{
          :IPAMConfig => EndpointIpamConfig,
          :Links => [String.t()],
          :Aliases => [String.t()],
          :NetworkID => String.t(),
          :EndpointID => String.t(),
          :Gateway => String.t(),
          :IPAddress => String.t(),
          :IPPrefixLen => integer(),
          :IPv6Gateway => String.t(),
          :GlobalIPv6Address => String.t(),
          :GlobalIPv6PrefixLen => integer(),
          :MacAddress => String.t(),
          :DriverOpts => %{optional(String.t()) => String.t()}
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.EndpointSettings do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:IPAMConfig, :struct, DockerEngineAPI.Model.EndpointIpamConfig, options)
  end
end
