# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecSecrets do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :File,
    :SecretID,
    :SecretName
  ]

  @type t :: %__MODULE__{
          :File => TaskSpecContainerSpecFile,
          :SecretID => String.t(),
          :SecretName => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecContainerSpecSecrets do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:File, :struct, DockerEngineAPI.Model.TaskSpecContainerSpecFile, options)
  end
end
