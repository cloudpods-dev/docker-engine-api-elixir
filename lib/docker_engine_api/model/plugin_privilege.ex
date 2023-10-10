# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.PluginPrivilege do
  @moduledoc """
  Describes a permission the user has to accept upon installing the plugin. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Description",
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t,
    :"Description" => String.t,
    :"Value" => [String.t]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.PluginPrivilege do
  def decode(value, _options) do
    value
  end
end

