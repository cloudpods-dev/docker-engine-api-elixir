# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerSummaryHostConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :NetworkMode
  ]

  @type t :: %__MODULE__{
          :NetworkMode => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerSummaryHostConfig do
  def decode(value, _options) do
    value
  end
end
