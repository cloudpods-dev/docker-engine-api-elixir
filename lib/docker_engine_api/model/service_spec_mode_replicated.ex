# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ServiceSpecModeReplicated do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Replicas
  ]

  @type t :: %__MODULE__{
          :Replicas => integer()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ServiceSpecModeReplicated do
  def decode(value, _options) do
    value
  end
end
