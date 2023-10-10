# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.CreateImageInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :error,
    :errorDetail,
    :status,
    :progress,
    :progressDetail
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :error => String.t(),
          :errorDetail => ErrorDetail,
          :status => String.t(),
          :progress => String.t(),
          :progressDetail => ProgressDetail
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.CreateImageInfo do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetail, :struct, DockerEngineAPI.Model.ErrorDetail, options)
    |> deserialize(:progressDetail, :struct, DockerEngineAPI.Model.ProgressDetail, options)
  end
end
