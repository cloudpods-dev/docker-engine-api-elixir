# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.GenericResourcesInnerDiscreteResourceSpec do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Kind",
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Kind" => String.t,
    :"Value" => integer()
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.GenericResourcesInnerDiscreteResourceSpec do
  def decode(value, _options) do
    value
  end
end

