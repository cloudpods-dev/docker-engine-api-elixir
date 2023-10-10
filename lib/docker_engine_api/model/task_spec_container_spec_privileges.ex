# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecPrivileges do
  @moduledoc """
  Security options for the container
  """

  @derive [Poison.Encoder]
  defstruct [
    :CredentialSpec,
    :SELinuxContext
  ]

  @type t :: %__MODULE__{
          :CredentialSpec => TaskSpecContainerSpecPrivilegesCredentialSpec,
          :SELinuxContext => TaskSpecContainerSpecPrivilegesSeLinuxContext
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecContainerSpecPrivileges do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :CredentialSpec,
      :struct,
      DockerEngineAPI.Model.TaskSpecContainerSpecPrivilegesCredentialSpec,
      options
    )
    |> deserialize(
      :SELinuxContext,
      :struct,
      DockerEngineAPI.Model.TaskSpecContainerSpecPrivilegesSeLinuxContext,
      options
    )
  end
end
