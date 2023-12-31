# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.PluginEnv do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Description,
    :Settable,
    :Value
  ]

  @type t :: %__MODULE__{
          :Name => String.t(),
          :Description => String.t(),
          :Settable => [String.t()],
          :Value => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.PluginEnv do
  def decode(value, _options) do
    value
  end
end
