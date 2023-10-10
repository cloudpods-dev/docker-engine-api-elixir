# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.FilesystemChange do
  @moduledoc """
  Change in the container&#39;s filesystem. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Path,
    :Kind
  ]

  @type t :: %__MODULE__{
          :Path => String.t(),
          :Kind => ChangeType
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.FilesystemChange do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Kind, :struct, DockerEngineAPI.Model.ChangeType, options)
  end
end
