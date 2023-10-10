# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.VolumeCreateOptions do
  @moduledoc """
  Volume configuration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Driver",
    :"DriverOpts",
    :"Labels",
    :"ClusterVolumeSpec"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t,
    :"Driver" => String.t,
    :"DriverOpts" => %{optional(String.t) => String.t},
    :"Labels" => %{optional(String.t) => String.t},
    :"ClusterVolumeSpec" => ClusterVolumeSpec
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.VolumeCreateOptions do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ClusterVolumeSpec", :struct, DockerEngineAPI.Model.ClusterVolumeSpec, options)
  end
end

