# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerConfig do
  @moduledoc """
  Configuration for a container that is portable between hosts.  When used as &#x60;ContainerConfig&#x60; field in an image, &#x60;ContainerConfig&#x60; is an optional field containing the configuration of the container that was last committed when creating the image.  Previous versions of Docker builder used this field to store build cache, and it is not in active use anymore. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Hostname,
    :Domainname,
    :User,
    :AttachStdin,
    :AttachStdout,
    :AttachStderr,
    :ExposedPorts,
    :Tty,
    :OpenStdin,
    :StdinOnce,
    :Env,
    :Cmd,
    :Healthcheck,
    :ArgsEscaped,
    :Image,
    :Volumes,
    :WorkingDir,
    :Entrypoint,
    :NetworkDisabled,
    :MacAddress,
    :OnBuild,
    :Labels,
    :StopSignal,
    :StopTimeout,
    :Shell
  ]

  @type t :: %__MODULE__{
          :Hostname => String.t(),
          :Domainname => String.t(),
          :User => String.t(),
          :AttachStdin => boolean(),
          :AttachStdout => boolean(),
          :AttachStderr => boolean(),
          :ExposedPorts => %{optional(String.t()) => Object},
          :Tty => boolean(),
          :OpenStdin => boolean(),
          :StdinOnce => boolean(),
          :Env => [String.t()],
          :Cmd => [String.t()],
          :Healthcheck => HealthConfig,
          :ArgsEscaped => boolean(),
          :Image => String.t(),
          :Volumes => %{optional(String.t()) => Object},
          :WorkingDir => String.t(),
          :Entrypoint => [String.t()],
          :NetworkDisabled => boolean(),
          :MacAddress => String.t(),
          :OnBuild => [String.t()],
          :Labels => %{optional(String.t()) => String.t()},
          :StopSignal => String.t(),
          :StopTimeout => integer(),
          :Shell => [String.t()]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerConfig do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:ExposedPorts, :map, DockerEngineAPI.Model.Object, options)
    |> deserialize(:Healthcheck, :struct, DockerEngineAPI.Model.HealthConfig, options)
    |> deserialize(:Volumes, :map, DockerEngineAPI.Model.Object, options)
  end
end
