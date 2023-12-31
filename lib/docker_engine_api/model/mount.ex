# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Mount do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Target,
    :Source,
    :Type,
    :ReadOnly,
    :Consistency,
    :BindOptions,
    :VolumeOptions,
    :TmpfsOptions
  ]

  @type t :: %__MODULE__{
          :Target => String.t(),
          :Source => String.t(),
          :Type => String.t(),
          :ReadOnly => boolean(),
          :Consistency => String.t(),
          :BindOptions => MountBindOptions,
          :VolumeOptions => MountVolumeOptions,
          :TmpfsOptions => MountTmpfsOptions
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Mount do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:BindOptions, :struct, DockerEngineAPI.Model.MountBindOptions, options)
    |> deserialize(:VolumeOptions, :struct, DockerEngineAPI.Model.MountVolumeOptions, options)
    |> deserialize(:TmpfsOptions, :struct, DockerEngineAPI.Model.MountTmpfsOptions, options)
  end
end
