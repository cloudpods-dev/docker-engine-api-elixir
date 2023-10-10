# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.HostConfig do
  @moduledoc """
  Container configuration that depends on the host we are running on
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CpuShares",
    :"Memory",
    :"CgroupParent",
    :"BlkioWeight",
    :"BlkioWeightDevice",
    :"BlkioDeviceReadBps",
    :"BlkioDeviceWriteBps",
    :"BlkioDeviceReadIOps",
    :"BlkioDeviceWriteIOps",
    :"CpuPeriod",
    :"CpuQuota",
    :"CpuRealtimePeriod",
    :"CpuRealtimeRuntime",
    :"CpusetCpus",
    :"CpusetMems",
    :"Devices",
    :"DeviceCgroupRules",
    :"DeviceRequests",
    :"KernelMemoryTCP",
    :"MemoryReservation",
    :"MemorySwap",
    :"MemorySwappiness",
    :"NanoCpus",
    :"OomKillDisable",
    :"Init",
    :"PidsLimit",
    :"Ulimits",
    :"CpuCount",
    :"CpuPercent",
    :"IOMaximumIOps",
    :"IOMaximumBandwidth",
    :"Binds",
    :"ContainerIDFile",
    :"LogConfig",
    :"NetworkMode",
    :"PortBindings",
    :"RestartPolicy",
    :"AutoRemove",
    :"VolumeDriver",
    :"VolumesFrom",
    :"Mounts",
    :"ConsoleSize",
    :"Annotations",
    :"CapAdd",
    :"CapDrop",
    :"CgroupnsMode",
    :"Dns",
    :"DnsOptions",
    :"DnsSearch",
    :"ExtraHosts",
    :"GroupAdd",
    :"IpcMode",
    :"Cgroup",
    :"Links",
    :"OomScoreAdj",
    :"PidMode",
    :"Privileged",
    :"PublishAllPorts",
    :"ReadonlyRootfs",
    :"SecurityOpt",
    :"StorageOpt",
    :"Tmpfs",
    :"UTSMode",
    :"UsernsMode",
    :"ShmSize",
    :"Sysctls",
    :"Runtime",
    :"Isolation",
    :"MaskedPaths",
    :"ReadonlyPaths"
  ]

  @type t :: %__MODULE__{
    :"CpuShares" => integer(),
    :"Memory" => integer(),
    :"CgroupParent" => String.t,
    :"BlkioWeight" => integer(),
    :"BlkioWeightDevice" => [ResourcesBlkioWeightDevice],
    :"BlkioDeviceReadBps" => [ThrottleDevice],
    :"BlkioDeviceWriteBps" => [ThrottleDevice],
    :"BlkioDeviceReadIOps" => [ThrottleDevice],
    :"BlkioDeviceWriteIOps" => [ThrottleDevice],
    :"CpuPeriod" => integer(),
    :"CpuQuota" => integer(),
    :"CpuRealtimePeriod" => integer(),
    :"CpuRealtimeRuntime" => integer(),
    :"CpusetCpus" => String.t,
    :"CpusetMems" => String.t,
    :"Devices" => [DeviceMapping],
    :"DeviceCgroupRules" => [String.t],
    :"DeviceRequests" => [DeviceRequest],
    :"KernelMemoryTCP" => integer(),
    :"MemoryReservation" => integer(),
    :"MemorySwap" => integer(),
    :"MemorySwappiness" => integer(),
    :"NanoCpus" => integer(),
    :"OomKillDisable" => boolean(),
    :"Init" => boolean(),
    :"PidsLimit" => integer(),
    :"Ulimits" => [ResourcesUlimits],
    :"CpuCount" => integer(),
    :"CpuPercent" => integer(),
    :"IOMaximumIOps" => integer(),
    :"IOMaximumBandwidth" => integer(),
    :"Binds" => [String.t],
    :"ContainerIDFile" => String.t,
    :"LogConfig" => HostConfigLogConfig,
    :"NetworkMode" => String.t,
    :"PortBindings" => PortMap,
    :"RestartPolicy" => RestartPolicy,
    :"AutoRemove" => boolean(),
    :"VolumeDriver" => String.t,
    :"VolumesFrom" => [String.t],
    :"Mounts" => [Mount],
    :"ConsoleSize" => [integer()],
    :"Annotations" => %{optional(String.t) => String.t},
    :"CapAdd" => [String.t],
    :"CapDrop" => [String.t],
    :"CgroupnsMode" => String.t,
    :"Dns" => [String.t],
    :"DnsOptions" => [String.t],
    :"DnsSearch" => [String.t],
    :"ExtraHosts" => [String.t],
    :"GroupAdd" => [String.t],
    :"IpcMode" => String.t,
    :"Cgroup" => String.t,
    :"Links" => [String.t],
    :"OomScoreAdj" => integer(),
    :"PidMode" => String.t,
    :"Privileged" => boolean(),
    :"PublishAllPorts" => boolean(),
    :"ReadonlyRootfs" => boolean(),
    :"SecurityOpt" => [String.t],
    :"StorageOpt" => %{optional(String.t) => String.t},
    :"Tmpfs" => %{optional(String.t) => String.t},
    :"UTSMode" => String.t,
    :"UsernsMode" => String.t,
    :"ShmSize" => integer(),
    :"Sysctls" => %{optional(String.t) => String.t},
    :"Runtime" => String.t,
    :"Isolation" => String.t,
    :"MaskedPaths" => [String.t],
    :"ReadonlyPaths" => [String.t]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.HostConfig do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"BlkioWeightDevice", :list, DockerEngineAPI.Model.ResourcesBlkioWeightDevice, options)
    |> deserialize(:"BlkioDeviceReadBps", :list, DockerEngineAPI.Model.ThrottleDevice, options)
    |> deserialize(:"BlkioDeviceWriteBps", :list, DockerEngineAPI.Model.ThrottleDevice, options)
    |> deserialize(:"BlkioDeviceReadIOps", :list, DockerEngineAPI.Model.ThrottleDevice, options)
    |> deserialize(:"BlkioDeviceWriteIOps", :list, DockerEngineAPI.Model.ThrottleDevice, options)
    |> deserialize(:"Devices", :list, DockerEngineAPI.Model.DeviceMapping, options)
    |> deserialize(:"DeviceRequests", :list, DockerEngineAPI.Model.DeviceRequest, options)
    |> deserialize(:"Ulimits", :list, DockerEngineAPI.Model.ResourcesUlimits, options)
    |> deserialize(:"LogConfig", :struct, DockerEngineAPI.Model.HostConfigLogConfig, options)
    |> deserialize(:"PortBindings", :struct, DockerEngineAPI.Model.PortMap, options)
    |> deserialize(:"RestartPolicy", :struct, DockerEngineAPI.Model.RestartPolicy, options)
    |> deserialize(:"Mounts", :list, DockerEngineAPI.Model.Mount, options)
  end
end

