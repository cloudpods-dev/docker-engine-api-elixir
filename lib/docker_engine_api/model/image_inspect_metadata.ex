# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ImageInspectMetadata do
  @moduledoc """
  Additional metadata of the image in the local cache. This information is local to the daemon, and not part of the image itself. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"LastTagTime"
  ]

  @type t :: %__MODULE__{
    :"LastTagTime" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ImageInspectMetadata do
  def decode(value, _options) do
    value
  end
end
