# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecPrivilegesCredentialSpec do
  @moduledoc """
  CredentialSpec for managed service account (Windows only)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Config",
    :"File",
    :"Registry"
  ]

  @type t :: %__MODULE__{
    :"Config" => String.t,
    :"File" => String.t,
    :"Registry" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecContainerSpecPrivilegesCredentialSpec do
  def decode(value, _options) do
    value
  end
end
