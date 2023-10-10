# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Topology do
  @moduledoc """
  A map of topological domains to topological segments. For in depth details, see documentation for the Topology object in the CSI specification. 
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Topology do
  def decode(value, _options) do
    value
  end
end
