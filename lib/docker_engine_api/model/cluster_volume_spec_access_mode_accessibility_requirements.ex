# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpecAccessModeAccessibilityRequirements do
  @moduledoc """
  Requirements for the accessible topology of the volume. These fields are optional. For an in-depth description of what these fields mean, see the CSI specification. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Requisite,
    :Preferred
  ]

  @type t :: %__MODULE__{
          :Requisite => [Topology],
          :Preferred => [Topology]
        }
end

defimpl Poison.Decoder,
  for: DockerEngineAPI.Model.ClusterVolumeSpecAccessModeAccessibilityRequirements do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Requisite, :list, DockerEngineAPI.Model.Topology, options)
    |> deserialize(:Preferred, :list, DockerEngineAPI.Model.Topology, options)
  end
end
