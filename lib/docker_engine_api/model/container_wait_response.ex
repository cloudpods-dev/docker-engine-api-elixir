# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerWaitResponse do
  @moduledoc """
  OK response to ContainerWait operation
  """

  @derive [Poison.Encoder]
  defstruct [
    :StatusCode,
    :Error
  ]

  @type t :: %__MODULE__{
          :StatusCode => integer(),
          :Error => ContainerWaitExitError
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerWaitResponse do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Error, :struct, DockerEngineAPI.Model.ContainerWaitExitError, options)
  end
end
