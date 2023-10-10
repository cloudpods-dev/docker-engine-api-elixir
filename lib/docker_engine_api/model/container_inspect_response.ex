# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerInspectResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Id,
    :Created,
    :Path,
    :Args,
    :State,
    :Image,
    :ResolvConfPath,
    :HostnamePath,
    :HostsPath,
    :LogPath,
    :Name,
    :RestartCount,
    :Driver,
    :Platform,
    :MountLabel,
    :ProcessLabel,
    :AppArmorProfile,
    :ExecIDs,
    :HostConfig,
    :GraphDriver,
    :SizeRw,
    :SizeRootFs,
    :Mounts,
    :Config,
    :NetworkSettings
  ]

  @type t :: %__MODULE__{
          :Id => String.t(),
          :Created => String.t(),
          :Path => String.t(),
          :Args => [String.t()],
          :State => ContainerState,
          :Image => String.t(),
          :ResolvConfPath => String.t(),
          :HostnamePath => String.t(),
          :HostsPath => String.t(),
          :LogPath => String.t(),
          :Name => String.t(),
          :RestartCount => integer(),
          :Driver => String.t(),
          :Platform => String.t(),
          :MountLabel => String.t(),
          :ProcessLabel => String.t(),
          :AppArmorProfile => String.t(),
          :ExecIDs => [String.t()],
          :HostConfig => HostConfig,
          :GraphDriver => GraphDriverData,
          :SizeRw => integer(),
          :SizeRootFs => integer(),
          :Mounts => [MountPoint],
          :Config => ContainerConfig,
          :NetworkSettings => NetworkSettings
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerInspectResponse do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:State, :struct, DockerEngineAPI.Model.ContainerState, options)
    |> deserialize(:HostConfig, :struct, DockerEngineAPI.Model.HostConfig, options)
    |> deserialize(:GraphDriver, :struct, DockerEngineAPI.Model.GraphDriverData, options)
    |> deserialize(:Mounts, :list, DockerEngineAPI.Model.MountPoint, options)
    |> deserialize(:Config, :struct, DockerEngineAPI.Model.ContainerConfig, options)
    |> deserialize(:NetworkSettings, :struct, DockerEngineAPI.Model.NetworkSettings, options)
  end
end
