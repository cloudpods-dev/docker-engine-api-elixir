# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecPlacement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Constraints",
    :"Preferences",
    :"MaxReplicas",
    :"Platforms"
  ]

  @type t :: %__MODULE__{
    :"Constraints" => [String.t],
    :"Preferences" => [TaskSpecPlacementPreferences],
    :"MaxReplicas" => integer(),
    :"Platforms" => [Platform]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecPlacement do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Preferences", :list, DockerEngineAPI.Model.TaskSpecPlacementPreferences, options)
    |> deserialize(:"Platforms", :list, DockerEngineAPI.Model.Platform, options)
  end
end
