# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Runtime do
  @moduledoc """
  Runtime describes an [OCI compliant](https://github.com/opencontainers/runtime-spec) runtime.  The runtime is invoked by the daemon via the &#x60;containerd&#x60; daemon. OCI runtimes act as an interface to the Linux kernel namespaces, cgroups, and SELinux. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :path,
    :runtimeArgs
  ]

  @type t :: %__MODULE__{
          :path => String.t(),
          :runtimeArgs => [String.t()]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Runtime do
  def decode(value, _options) do
    value
  end
end
