# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpecAccessModeSecrets do
  @moduledoc """
  One cluster volume secret entry. Defines a key-value pair that is passed to the plugin. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Key",
    :"Secret"
  ]

  @type t :: %__MODULE__{
    :"Key" => String.t,
    :"Secret" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ClusterVolumeSpecAccessModeSecrets do
  def decode(value, _options) do
    value
  end
end
