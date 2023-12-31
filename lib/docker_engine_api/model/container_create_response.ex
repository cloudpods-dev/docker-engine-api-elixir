# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerCreateResponse do
  @moduledoc """
  OK response to ContainerCreate operation
  """

  @derive [Poison.Encoder]
  defstruct [
    :Id,
    :Warnings
  ]

  @type t :: %__MODULE__{
          :Id => String.t(),
          :Warnings => [String.t()]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerCreateResponse do
  def decode(value, _options) do
    value
  end
end
