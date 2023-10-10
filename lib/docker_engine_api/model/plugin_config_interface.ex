# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.PluginConfigInterface do
  @moduledoc """
  The interface between Docker and the plugin
  """

  @derive [Poison.Encoder]
  defstruct [
    :Types,
    :Socket,
    :ProtocolScheme
  ]

  @type t :: %__MODULE__{
          :Types => [PluginInterfaceType],
          :Socket => String.t(),
          :ProtocolScheme => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.PluginConfigInterface do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Types, :list, DockerEngineAPI.Model.PluginInterfaceType, options)
  end
end
