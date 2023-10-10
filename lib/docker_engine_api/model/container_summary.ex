# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerSummary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Id",
    :"Names",
    :"Image",
    :"ImageID",
    :"Command",
    :"Created",
    :"Ports",
    :"SizeRw",
    :"SizeRootFs",
    :"Labels",
    :"State",
    :"Status",
    :"HostConfig",
    :"NetworkSettings",
    :"Mounts"
  ]

  @type t :: %__MODULE__{
    :"Id" => String.t,
    :"Names" => [String.t],
    :"Image" => String.t,
    :"ImageID" => String.t,
    :"Command" => String.t,
    :"Created" => integer(),
    :"Ports" => [Port],
    :"SizeRw" => integer(),
    :"SizeRootFs" => integer(),
    :"Labels" => %{optional(String.t) => String.t},
    :"State" => String.t,
    :"Status" => String.t,
    :"HostConfig" => ContainerSummaryHostConfig,
    :"NetworkSettings" => ContainerSummaryNetworkSettings,
    :"Mounts" => [MountPoint]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerSummary do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Ports", :list, DockerEngineAPI.Model.Port, options)
    |> deserialize(:"HostConfig", :struct, DockerEngineAPI.Model.ContainerSummaryHostConfig, options)
    |> deserialize(:"NetworkSettings", :struct, DockerEngineAPI.Model.ContainerSummaryNetworkSettings, options)
    |> deserialize(:"Mounts", :list, DockerEngineAPI.Model.MountPoint, options)
  end
end

