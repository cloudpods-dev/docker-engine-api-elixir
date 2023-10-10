# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpec do
  @moduledoc """
  User modifiable task configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"PluginSpec",
    :"ContainerSpec",
    :"NetworkAttachmentSpec",
    :"Resources",
    :"RestartPolicy",
    :"Placement",
    :"ForceUpdate",
    :"Runtime",
    :"Networks",
    :"LogDriver"
  ]

  @type t :: %__MODULE__{
    :"PluginSpec" => TaskSpecPluginSpec,
    :"ContainerSpec" => TaskSpecContainerSpec,
    :"NetworkAttachmentSpec" => TaskSpecNetworkAttachmentSpec,
    :"Resources" => TaskSpecResources,
    :"RestartPolicy" => TaskSpecRestartPolicy,
    :"Placement" => TaskSpecPlacement,
    :"ForceUpdate" => integer(),
    :"Runtime" => String.t,
    :"Networks" => [NetworkAttachmentConfig],
    :"LogDriver" => TaskSpecLogDriver
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpec do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"PluginSpec", :struct, DockerEngineAPI.Model.TaskSpecPluginSpec, options)
    |> deserialize(:"ContainerSpec", :struct, DockerEngineAPI.Model.TaskSpecContainerSpec, options)
    |> deserialize(:"NetworkAttachmentSpec", :struct, DockerEngineAPI.Model.TaskSpecNetworkAttachmentSpec, options)
    |> deserialize(:"Resources", :struct, DockerEngineAPI.Model.TaskSpecResources, options)
    |> deserialize(:"RestartPolicy", :struct, DockerEngineAPI.Model.TaskSpecRestartPolicy, options)
    |> deserialize(:"Placement", :struct, DockerEngineAPI.Model.TaskSpecPlacement, options)
    |> deserialize(:"Networks", :list, DockerEngineAPI.Model.NetworkAttachmentConfig, options)
    |> deserialize(:"LogDriver", :struct, DockerEngineAPI.Model.TaskSpecLogDriver, options)
  end
end
