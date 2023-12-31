# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpec do
  @moduledoc """
  Cluster-specific options used to create the volume. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Group,
    :AccessMode
  ]

  @type t :: %__MODULE__{
          :Group => String.t(),
          :AccessMode => ClusterVolumeSpecAccessMode
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ClusterVolumeSpec do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :AccessMode,
      :struct,
      DockerEngineAPI.Model.ClusterVolumeSpecAccessMode,
      options
    )
  end
end
