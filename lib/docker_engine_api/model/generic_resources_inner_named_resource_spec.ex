# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.GenericResourcesInnerNamedResourceSpec do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Kind,
    :Value
  ]

  @type t :: %__MODULE__{
          :Kind => String.t(),
          :Value => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.GenericResourcesInnerNamedResourceSpec do
  def decode(value, _options) do
    value
  end
end
