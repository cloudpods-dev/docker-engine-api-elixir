# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Body do
  @moduledoc """
  Volume configuration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Spec"
  ]

  @type t :: %__MODULE__{
    :"Spec" => ClusterVolumeSpec
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Body do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Spec", :struct, DockerEngineAPI.Model.ClusterVolumeSpec, options)
  end
end
